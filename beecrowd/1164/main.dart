import "dart:io";
void main (){
  int count = readLineAsInt();

  while(count-- > 0){
    int number = readLineAsInt();
    if(isPerfect(number)){
      print("$number eh perfeito");
    } else {
      print("$number nao eh perfeito");
    }
  }
}

int readLineAsInt() => int.parse(stdin.readLineSync() ?? '0');

bool isPerfect(int number){
  int sumDivs = 0;
  for(int div=1; div < number;div++){
    if(number % div == 0){
      sumDivs += div;
    }
  }

  return sumDivs == number;
}