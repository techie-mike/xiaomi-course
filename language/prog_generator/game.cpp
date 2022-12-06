#include "game.h"
#include <SFML/Graphics.hpp>
#include "game.h"
#include <cstdio>

int NearNeighbours(bool buffer[][BOX_SIZE_X], int pos_x, int pos_y)
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

void Evolution(bool buffer[][BOX_SIZE_X], bool new_buffer[][BOX_SIZE_X])
{
    for (int y = 0; y < BOX_SIZE_Y; y++) {
        for (int x = 0; x < BOX_SIZE_X; x++) {
            int near = NearNeighbours(buffer, x, y);
            if (buffer[y][x] == false) {
                if (near == 3) {
                    new_buffer[y][x] = true;
                }
            } else {
                if (near == 3 || near == 2) {
                    new_buffer[y][x] = true;
                } else {
                    new_buffer[y][x] = false;
                }
            }
        }
    }
}

void CopyBuffer(bool updated_buffer[][BOX_SIZE_X], bool copied_buffer[][BOX_SIZE_X])
{
    for (int y = 0; y < BOX_SIZE_Y; y++) {
        for (int x = 0; x < BOX_SIZE_X; x++) {
            updated_buffer[y][x] = copied_buffer[y][x];
        }
    }
}

void DrawWindow(bool buffer[][BOX_SIZE_X])
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

void InitBuffer(bool buffer[][BOX_SIZE_X])
{
    for (int j = 0; j  < BOX_SIZE_Y; j++) {
        for (int i = 0; i < BOX_SIZE_X; i++) {
            buffer[j][i] = Random();
        }
    }
}

int main()
{
    bool buffer[BOX_SIZE_Y][BOX_SIZE_X] = {};
    bool buffer_new_state[BOX_SIZE_Y][BOX_SIZE_X] = {};

    InitBuffer(buffer);
    while (1) {
        DrawWindow(buffer);
        Evolution(buffer, buffer_new_state);
        CopyBuffer(buffer, buffer_new_state);
    }
    return 0;
}
