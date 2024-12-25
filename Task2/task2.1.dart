import 'dart:io';

void main() {
  print("Enter the year ..");
String? input = stdin.readLineSync();

if (input != null && int.tryParse(input) != null) {
  int year = int.parse(input);

  if ((year % 4 == 0 && year % 100 != 0) || (year % 100 ==0 && year % 400 == 0)) {
    print("The year is leap");
  } else {
    print("The year is not leap");
  }
}else {
print('Invalid input. Please enter a valid year.');
}

}


