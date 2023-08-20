
// TODO: 1. Create a class named 'Car' with the following properties:
// - brand (String)
// - model (String)
// - year (int)
// Add a constructor to initialize these properties.
class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);
}
// TODO: 2. Create a class named 'ElectricCar' that inherits from the 'Car' class.
// Add the following properties to the 'ElectricCar' class:
// - batteryCapacity (double)
// - range (double)
// Add a constructor to initialize these properties along with the properties from the 'Car' class.
// HINT: https://dart.dev/language#inheritance
class ElectricCar extends Car {
  double batteryCapacity;
  double range;

  ElectricCar(super.brand, super.model, super.year, this.batteryCapacity, this.range);
}

void main() {
  ElectricCar teslaModel3 = ElectricCar('Tesla', 'Model 3', 2021, 82.0, 358.0);
   
  print('Electric Car: ${teslaModel3.brand}, ${teslaModel3.model}, ${teslaModel3.year}, ${teslaModel3.batteryCapacity} kWh, ${teslaModel3.range} miles');
 }