#version 330

in vec4 interpolatedColor; // Zmienna interpolowana przechowuj¹ca kolor wierzcho³ka

out vec4 pixelColor; // Zmienna wyjœciowa fragment shadera. Zapisuje siê do niej ostateczny kolor piksela

void main(void) {
    pixelColor = interpolatedColor; // Ustawienie koloru piksela na interpolowany kolor
}
