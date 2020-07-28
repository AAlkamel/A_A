import 'dart:math';
import 'dart:io';
main(){
print('welcome in our tool plying');
print('inter your suggest') ;

int computernum = createRan();
var usernumber;
do{
   usernumber =userSuggest();
 Map<bool,String>answer = compare(computernum, usernumber);
 print('$answer');
}while(usernumber!=computernum);


}
// ignore: always_declare_return_types
//-----create a random number ------
int createRan(){
 Random random = Random();
int cnum = random.nextInt(50);
 return cnum;
}
//-----get suggested user number ------
int userSuggest(){
  String unum;
     unum = stdin.readLineSync();
     int usernum = int.parse(unum);
      return usernum;
}
Map<bool,String> compare(cnum,usernum){
 Map<bool,String> answer;
if(usernum>cnum){
return {false:'too high'};
}else if(usernum<cnum){
  return{false:'too low'};
}else{ return{true:'you gat it,it was $cnum'};}
}
