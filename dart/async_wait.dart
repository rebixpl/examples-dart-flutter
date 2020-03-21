import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async { // You need to write async to use await!
  task1();
  String task2Results = await task2(); // await means that before we going to call task2() we will wait for it to finish 
  task3(task2Results);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async { // A future is something that would exist in the future // We are expecting a future String (but giving data type is not necessary )
  // Artificial delay 3 sec
  Duration threeSeconds = Duration(seconds: 3);

  String result;

  // This is asynchrous method
  await Future.delayed(threeSeconds, () {
    // It will delay that code in this function, and do it after delay (in this example is 3 sec)
    result = 'task 2 data';
    print('Task 2 complete');
  });
  
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}

// With Future function the output would be:
// Task 1 complete
// ...waiting 3 seconds...
// Task 2 complete
// Task 3 complete with task 2 data
