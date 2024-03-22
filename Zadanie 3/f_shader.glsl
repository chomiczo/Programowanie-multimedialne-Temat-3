#version 330

in vec4 interpolatedColor; // Zmienna interpolowana przechowuj�ca kolor wierzcho�ka

out vec4 pixelColor; // Zmienna wyj�ciowa fragment shadera. Zapisuje si�ads niej ostateczny kolor piksela

uniform vec3 cameraPosition; // Pozycja obserwatora (kamery)

void main(void) {
    // Oblicz odleg�o�� piksela od obserwatora
    float distanceToCamera = distance(vec3(gl_FragCoord), cameraPosition);

    // Przeskaluj odleg�o�� do przedzia�u [0, 1] (minimalna odleg�o�� to 1.7, maksymalna to 3.3)
    float scaledDistance = clamp((distanceToCamera - 1.7) / (3.3 - 1.7), 0.0, 1.0);

    // Oblicz ostateczny kolor piksela na podstawie odleg�o�ci - im wi�ksza odleg�o��, tym mniej widoczne �wiat�o
    pixelColor = interpolatedColor * (1.0 - scaledDistance);
}
