main() {
  print("Hello I'm \"ZagEng\"\n");

  double distance = 25;
  double speed = 40;
  double takenTime = distance / speed;

  int hours = takenTime.floor();
  double remainingMinutes = (takenTime - hours) * 60;
  int minutes = remainingMinutes.floor();
  int seconds = ((remainingMinutes - minutes) * 60).round();

  print(
      "The taken time to reach the office is: $hours hours, $minutes minutes and $seconds seconds\n");

  int counter = 10;
  print("Countdown timer has started ..\n"); // the start of countdown..
  print("Counter : $counter"); // the started value => 10
  counter--; // decrement value by 1
  print("Counter : $counter"); 
  counter--;
  print("Counter : $counter");
  counter--;
  print("Counter : $counter");
  counter--;
  print("Counter : $counter");
  counter--;
  print("Counter : $counter");
  counter--;
  print("Counter : $counter");
  counter--;
  print("Counter : $counter");
  counter--;
  print("Counter : $counter");
  counter--;
  print("Counter : $counter");
  counter--;
  print("Counter : $counter"); // the final value => 0
  print("\nThe countdown is over!");
}
