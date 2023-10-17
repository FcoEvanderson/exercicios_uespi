import "dart:io";
void main () {
  var frequency = <int, int> {};
  var numbers = readLineAsInt();
  
  while(numbers-- > 0){
    int number = readLineAsInt();

    if (frequency[number] != null){
      frequency[number] = frequency[number]! + 1;
    } else {
      frequency[number] = 1;
    }
  }
  var keys = frequency.keys.toList();
  keys.sort();
  for (var key in keys){
    print("$key aparece ${frequency[key]} vezes.");
  }
}

int readLineAsInt(){
  return int.parse(stdin.readLineSync() ?? '0');
}