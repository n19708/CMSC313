#include <stdio.h>

typedef struct Vehicle{
    void (*startEngine)();
    void (*accelerate)(struct Vehicle*);
    void (*brake)(struct Vehicle*);
}Vehicle;

void startEngine() {
    printf("Engine started!\n");
}

void accelerate(Vehicle* vehicle) {
    printf("Car: Pressing gas pedal...\n");
}

void brake(Vehicle* vehicle) {
    printf("Car: Applying brakes...\n");
}

void initCar(Vehicle* vehicle) {
    vehicle->startEngine = startEngine;
    vehicle->accelerate = accelerate;
    vehicle->brake = brake;
}

int main() {
    Vehicle newCar;
    initCar(&newCar);

    newCar.startEngine();
    newCar.accelerate(&newCar);
    newCar.brake(&newCar);

    return 0;
}