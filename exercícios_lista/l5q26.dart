void main(){
  int number = 1648573638;
  String r;

    r = intToRadix1(number);
    print("$number na base 2: $r");

    r = intToRadix1(number);
    print("$number na base 8: $r");

    r = intToRadix1(number);
    print("$number na base 10: $r");

    r = intToRadix1(number);
    print("$number na base 16: $r");

    print("Error");

}

String intToRadix1(int number, [int radix = 2]){
  const digits = '0123456789abcdefghijklmnopqrstuvwxyz';
  String result = '';
  String signal = (number < 0) ? '-' : '';

  do {
    result = digits[number % radix] + result;
    number = number ~/ radix;
  } while (number != 0);

  return signal + result;
}

String intToRadix2(int number, [int radix = 2]){
  String result = '';
  String signal = (number < 0) ? '-' : '';
  String digit;
  int value;

  if ((radix < 2)|| (radix > 36)){
    throw RangeError("Invalid Radix: $radix");
  }

  number = number.abs();
  do {
    value = number % radix;

    digit = (value < 10) 
    ? String.fromCharCode(48 + value) 
    : digit = String.fromCharCode(87 + value);

    result = digit + result;
    number = number ~/ radix;
  } while (number != 0);

  return signal + result;
}