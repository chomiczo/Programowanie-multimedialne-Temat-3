#version 330

in vec4 interpolatedColor; // Zmienna interpolowana przechowuj�ca kolor wierzcho�ka

out vec4 pixelColor; // Zmienna wyj�ciowa fragment shadera. Zapisuje si� do niej ostateczny kolor piksela

void main(void) {
    pixelColor = interpolatedColor; // Ustawienie koloru piksela na interpolowany kolor
}
