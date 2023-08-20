void main() {
   
  var age = 1;// Supply age here

  if (age < 18) {
    print('You are a minor');
  } else if (age >= 18 && age <= 65) {
    print('You are an adult');
  } else {
    print('You are a senior citizen');
  }
}