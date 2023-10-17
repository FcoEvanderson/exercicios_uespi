import "dart:io";

void main (){
  var teams = List<String>.generate(
    16,
    (index) => String.fromCharCode(65 + index),
  );
  //var teams = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  int matches = 8;

  while (matches > 0){
    doMatches(teams, matches);
    matches = matches ~/ 2;
  }

  print(teams[0]);
}

void doMatches(List<String> teams, int matches){
  for(int t=0; t < matches; t++){
    // '5 3'
    var line = stdin.readLineSync()!;
    // [5,3]
    var scores = line.split(' ').map(int.parse).toList();
    if (scores[0] > scores[1]){
      teams.removeAt(t+1);
    } else{
      teams.removeAt(t);
    }
  }
}