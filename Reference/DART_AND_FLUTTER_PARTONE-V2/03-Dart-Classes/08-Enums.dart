// Enums are a way to define a set of named constants
// that represent a finite number of possible values.
enum Meal {
  breakfast,
  lunch,
  dinner,
}

void main() {
  // To use an enum, simply refer to one of its constants.
  var todayMeal = Meal.lunch;

  // You can compare enums using the equality operator.
  if (todayMeal == Meal.breakfast) {
    print('It is time for breakfast!');
  } else if (todayMeal == Meal.lunch) {
    print('It is time for lunch!'); // This will be printed
  } else if (todayMeal == Meal.dinner) {
    print('It is time for dinner!');
  }

  // Enums can be used in other contexts as well.
  List<Meal> meals = [Meal.breakfast, Meal.lunch, Meal.dinner];
  print(meals); // Prints [Meal.breakfast, Meal.lunch, Meal.dinner]
}
