import 'dart:math';
import 'dart:io';
// ignore: always_declare_return_types
main(){
 var temType ;
 var uTem;
 var degree;
 var answer;
 print('type A to convert from fahrenheit to celsius');
 print('type B to convert from celsius to fahrenheit ');
 print('type E to exit ');
 do {
   temType = stdin.readLineSync();
   if (temType == 'A') {
     uTem = stdin.readLineSync();
     degree = int.parse(uTem);
     answer = (degree - 32) / 1.8;
     print('$uTem fahrenheit = $answer celsius');
   } else if (temType == 'B') {
     uTem = stdin.readLineSync();
     degree = int.parse(uTem);
     answer = (degree * 1.8) + 32;
     print('$uTem celsius = $answer fahrenheit');
   } else {
     print('type correct choice');
   }
   print('type A to convert from fahrenheit to celsius');
   print('type B to convert from celsius to fahrenheit ');
   print('type E to exit ');
 }while(temType!='E');
 print('Thank you for using my app ');
}
