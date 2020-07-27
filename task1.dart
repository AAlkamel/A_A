import'dart:math';
import 'dart:io';
main(){
Random random =Random();
int cGuss = random.nextInt(50);
var input ;
var uGss ;
do{
  input = stdin.readLineSync();
  uGss  = int.parse(input);
  if(uGss>cGuss){
    print('too high');
  }else if(uGss<cGuss){
    print('too low');
  }
}while(uGss!=cGuss);
print('you get it, it is $cGuss');
}
