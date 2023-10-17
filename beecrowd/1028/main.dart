import "dart:io";
void main(){
  var count = int.parse(stdin.readLineSync() ?? '0');
  while(count-- > 0){
    var num = stdin.readLineSync()!.split(" ");
    int n1 = int.parse(num[0]);
    int n2 = int.parse(num[1]);
    
    print(mdc(n1, n2));
  }
}

//maneira mais eficiente
int mdc(int a, int b){
  while(a != b){
    if(a < b){
      (a,b) = (b,a);
    } else {
      a = a - b;
    }
  }
  return a;
}

//maneira menos eficiente
int mdcr(int a, int b){
  if (a < b){
    return mdcr(b,a);
  } else if (a > b) {
    return mdcr(a-b, b);
  }
  return a;
}