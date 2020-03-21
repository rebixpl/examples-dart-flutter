import 'dart:io';

void main() {
  performTasks();
}

void performTasks()  {
  task1();
  task2();
  task3();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

void task2()  {
  // Artificial delay 3 sec
  Duration threeSeconds = Duration(seconds: 3);

  // This is asynchrous method
  Future.delayed(threeSeconds, () {
    // It will delay that code in this function, and do it after delay (in this example is 3 sec)
    String result = 'task 2 data';
    print('Task 2 complete');
  });
  // It will NOT wait to complete task, instead it will instantly make next task, and do delayed function in background
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 complete');
}

// With Future function the output would be:
// Task 1 complete
// Task 3 complete
// ...waiting 3 seconds...
// Task 2 complete
