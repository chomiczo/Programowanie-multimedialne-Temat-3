#version 330

in vec4 interpolatedColor; // Zmienna interpolowana przechowuj¹ca kolor wierzcho³ka

out vec4 pixelColor; // Zmienna wyjœciowa fragment shadera. Zapisuje siêads niej ostateczny kolor piksela

uniform vec3 cameraPosition; // Pozycja obserwatora (kamery)

void main(void) {
    // Oblicz odleg³oœæ piksela od obserwatora
    float distanceToCamera = distance(vec3(gl_FragCoord), cameraPosition);

    // Przeskaluj odleg³oœæ do przedzia³u [0, 1] (minimalna odleg³oœæ to 1.7, maksymalna to 3.3)
    float scaledDistance = clamp((distanceToCamera - 1.7) / (3.3 - 1.7), 0.0, 1.0);

    // Oblicz ostateczny kolor piksela na podstawie odleg³oœci - im wiêksza odleg³oœæ, tym mniej widoczne œwiat³o
    pixelColor = interpolatedColor * (1.0 - scaledDistance);
}
