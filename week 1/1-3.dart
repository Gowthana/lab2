import 'dart:io' show stdin,stdout;

void main (List<String> arguments){
  stdout.write('Enter number : ');
  var num ;
  num = num ?? stdin.readLineSync();
  int num2=int.parse(num);
   for (int i = 1; i < 13; i++) {
    print("$num * $i = ${num2 * i}");
    
  }
}