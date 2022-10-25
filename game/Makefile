all: game
	./game

game: game.o graphics_api.o
	clang-14 game.o graphics_api.o -o game -std=c++11 -lsfml-graphics -lsfml-window -lsfml-system -lstdc++

game.o: game.cpp game.h
	clang-14 -c game.cpp -Wall

graphics_api.o: graphics_api.cpp game.h
	clang-14 -c graphics_api.cpp -Wall

generator: generator.o graphics_api.o
	clang++-14 graphics_api.o generator.o -o gen_game -std=c++11 -lsfml-graphics -lsfml-window -lsfml-system `llvm-config --cxxflags --ldflags --libs`
	./gen_game

generator.o: generator.cpp
	clang++-14 -c generator.cpp  -Wall `llvm-config --cxxflags --ldflags --libs`