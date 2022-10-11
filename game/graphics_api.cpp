#include "game.h"
#include <SFML/Graphics.hpp>
#include <SFML/Graphics/Color.hpp>
#include <SFML/Graphics/PrimitiveType.hpp>
#include <SFML/Graphics/VertexArray.hpp>
#include <cstdlib>

sf::RenderWindow window(sf::VideoMode(BOX_SIZE_X, BOX_SIZE_Y), "Game live!");

void PutPixel(int x, int y) {
    auto point = sf::Vertex(sf::Vector2f(x, y), sf::Color::Green);
    window.draw(&point, 1, sf::Points);
}

void ClearWindow() {
    window.clear(sf::Color::Black);
}

bool Random() {
    return std::rand() % 2;
}

void Display()
{
    window.display();
}
