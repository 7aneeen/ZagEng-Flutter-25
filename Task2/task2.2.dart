import 'dart:io';

void main(){
  print("Enter 1 character ..");
  String? input = stdin.readLineSync();
  if(input != null && input.length == 1){
    String c = input.toLowerCase();
    switch(c){
      case "a":
      case "e":
      case "o":
      case "i":
      case "u":
        print("The character is vowel");
        break;
      default:
        print("The character is consonant");
    }
  }else {
    print("Please enter one character");
  }
}