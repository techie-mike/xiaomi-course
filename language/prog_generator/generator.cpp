#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/ExecutionEngine/GenericValue.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/TargetSelect.h"

#include <iostream>

#include "game.h"

bool buffer[BOX_SIZE_Y][BOX_SIZE_X] = {};
bool buffer_new_state[BOX_SIZE_Y][BOX_SIZE_X] = {};

int NearNeighbours(int pos_x, int pos_y)
{
    int num = 0;
    for (int row = pos_y - 1; row <= pos_y + 1; row++) {
        for (int col = pos_x - 1; col <= pos_x + 1; col++) {
            if (row == pos_x && col == pos_y) {
                continue;
            }
            if (col < 0 || row < 0 || col >= BOX_SIZE_X || row >= BOX_SIZE_Y) {
                continue;
            }
            if (buffer[row][col] == true) {
                num++;
            }
        }
    }
    return num;
}

void TEMP_Evolution()
{
    for (int y = 0; y < BOX_SIZE_Y; y++) {
        for (int x = 0; x < BOX_SIZE_X; x++) {
            int near = NearNeighbours(x, y);
            if (buffer[y][x] == false) {
                if (near == 3) {
                    buffer_new_state[y][x] = true;
                }
            } else {
                if (near == 3 || near == 2) {
                    buffer_new_state[y][x] = true;
                } else {
                    buffer_new_state[y][x] = false;
                }
            }
        }
    }
}

void TEMP_CopyBuffer()
{
    for (int y = 0; y < BOX_SIZE_Y; y++) {
        for (int x = 0; x < BOX_SIZE_X; x++) {
            buffer[y][x] = buffer_new_state[y][x];
        }
    }
}

void TEMP_DrawWindow()
{
    ClearWindow();
    for (int y = 0; y < BOX_SIZE_Y; y++) {
        for (int x = 0; x < BOX_SIZE_X; x++) {
            if (buffer[y][x]) {
                PutPixel(x, y);
            }
        }
    }
    Display();
}

void TEMP_InitBuffer()
{
    for (int j = 0; j  < BOX_SIZE_Y; j++) {
        for (int i = 0; i < BOX_SIZE_X; i++) {
            buffer[j][i] = Random();
        }
    }
}


void TEMP_main()
{
    TEMP_InitBuffer();
    while (1) {
        TEMP_DrawWindow();
        TEMP_Evolution();
        TEMP_CopyBuffer();
    }
}

void test()
{
    std::cerr << "test";
}

int main() {
    llvm::InitializeNativeTarget();
    llvm::InitializeAllAsmPrinters();

    llvm::LLVMContext context;
    // ; ModuleID = 'top'
    // source_filename = "top"
    llvm::Module *module = new llvm::Module("top", context);
    llvm::IRBuilder<> builder(context);

    // declare void @main()
    llvm::FunctionType *funcType =
        llvm::FunctionType::get(builder.getInt32Ty(), false);
    llvm::Function *mainFunc = llvm::Function::Create(
        funcType, llvm::Function::ExternalLinkage, "main", module);

    // entry:
    llvm::BasicBlock *entry =
        llvm::BasicBlock::Create(context, "entry", mainFunc);
    builder.SetInsertPoint(entry);

    llvm::Function *func_init_buffer = llvm::Function::Create(
        llvm::FunctionType::get(builder.getVoidTy(),
                                llvm::ArrayRef<llvm::Type *>(builder.getVoidTy()),
                                false),
        llvm::Function::ExternalLinkage, "TEMP_InitBuffer", module);

    llvm::Function *func_draw_window = llvm::Function::Create(
        llvm::FunctionType::get(builder.getVoidTy(),
                                llvm::ArrayRef<llvm::Type *>(builder.getVoidTy()),
                                false),
        llvm::Function::ExternalLinkage, "TEMP_DrawWindow", module);
    llvm::Function *func_evolution = llvm::Function::Create(
        llvm::FunctionType::get(builder.getVoidTy(),
                                llvm::ArrayRef<llvm::Type *>(builder.getVoidTy()),
                                false),
        llvm::Function::ExternalLinkage, "TEMP_Evolution", module);

    llvm::Function *func_copy_buffer = llvm::Function::Create(
        llvm::FunctionType::get(builder.getVoidTy(),
                                llvm::ArrayRef<llvm::Type *>(builder.getVoidTy()),
                                false),
        llvm::Function::ExternalLinkage, "TEMP_CopyBuffer", module);

    builder.CreateCall(func_init_buffer);
    llvm::BasicBlock *loop = llvm::BasicBlock::Create(context, "loop", mainFunc);
    builder.CreateBr(loop);

    builder.SetInsertPoint(loop);
    builder.CreateCall(func_draw_window);
    builder.CreateCall(func_evolution);
    builder.CreateCall(func_copy_buffer);

    builder.CreateBr(loop);

    llvm::ExecutionEngine *ee =
        llvm::EngineBuilder(std::unique_ptr<llvm::Module>(module)).create();
    ee->InstallLazyFunctionCreator([&](const std::string &fnName) -> void *
                                    {
        if (fnName == "TEMP_InitBuffer") {
        return reinterpret_cast<void *>(TEMP_InitBuffer);
        }
        if (fnName == "TEMP_DrawWindow") {
        return reinterpret_cast<void *>(TEMP_DrawWindow);
        }
        if (fnName == "TEMP_Evolution") {
        return reinterpret_cast<void *>(TEMP_Evolution);
        }
        if (fnName == "TEMP_CopyBuffer") {
        return reinterpret_cast<void *>(TEMP_CopyBuffer);
        }
        return nullptr; });
    ee->finalizeObject();
    std::vector<llvm::GenericValue> noargs;
    llvm::GenericValue v = ee->runFunction(mainFunc, noargs);

    std::cout << "#[LLVM IR]:\n";
    std::string s;
    llvm::raw_string_ostream os(s);
    module->print(os, nullptr);
    os.flush();
    std::cout << s;
}
