void main(List<String> args){

  if (args.length != 2){
    print("Usage: l5q10 N1 N2");
    return;
  }

  print("${args[0]} <=> ${args[1]}: ${isPermutation(args[0], args[1])}");
}

bool isPermutation(String arg1, String arg2){
  if (arg1.length != arg2.length) {
    return false;
  }

  for (int i=0; i < arg1.length;i++) {
   if (!arg2.contains(arg1[i])) {
    return false;
   }
   if (!arg1.contains(arg2[i])){
    return false;
   } 
  }

  return true;
}