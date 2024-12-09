import 'dart:io';

void task1(){
  print('Task1');
}

Future<String> task2() async{
  String C = 'task3';
  Duration duration = Duration(seconds: 5);
  await Future.delayed(duration,(){
    print('Task2');
  });
  return C;
}

void task3(String X){
  print(X);
}

void taskall() async{
  task1();
  String X;
  X = await task2();
  task3(X);
}

void main(){
  taskall();
}