import 'dart:math';
import 'dart:io';
class gameWithComputer{
int max, highCase,lwoCase ,selectedRandom, computerSuggested,userInput;
int cMine=0,cMax=50 ;
  gameWithComputer(){}
 void run(){
  max =50;
  welcome();
  selectedRandom = createRandom(max);
  print(selectedRandom);

  computerSuggested = highComputerSuggested(0, max);
do{  userInput =getUserSuggested();
  if(userInput>selectedRandom){
  print('user too high$userInput');
}
  if(computerSuggested>selectedRandom){
  print('computer too high $computerSuggested..$cMax $cMine');
  cMax=computerSuggested;
 computerSuggested = lowComputerSuggested(cMine, cMax);
 }
  if(userInput<selectedRandom){
  print('user too low $userInput');
  userInput =getUserSuggested();
}
  if(computerSuggested<selectedRandom){
  print('computer too low$computerSuggested..$cMax $cMine');
  cMine=computerSuggested;
  computerSuggested = highComputerSuggested(cMine, cMax);
}if(userInput==selectedRandom){print('user wins $userInput $selectedRandom');}
  else if(computerSuggested==selectedRandom){print('computer wins$computerSuggested..$cMax $cMine');}

}while(computerSuggested!=selectedRandom&&userInput!=selectedRandom);
 }
 welcome(){
    print('''welcome in our game you will play with computer
to suggested number from zero to $max''');
 }

  int createRandom(max){
   var random =Random() ;
  return random.nextInt(max);
  }
int getUserSuggested(){
    int userInput;
    bool state = true;
    do{print('type your suggest');
      String userSuggested = stdin.readLineSync();
    try{ userInput = int.parse(userSuggested);
   //print(userInput);
    state =true;
    }catch(ex){
      print('you entered wrong value');
      state=false;
    }
    }while(state!=true);
    return userInput;
}

highComputerSuggested(int cMine, int cMax){
  var high = (cMine+cMax)/2;
 return high.toInt();
}
lowComputerSuggested(int cMine, int cMax){
  var lwo = (cMax-cMine)/2;
 return lwo.toInt();
}
}

