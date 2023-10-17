import 'dart:math';
class Number {
  final int _number;

  //Number(int number) : _number = number;
  const Number(this._number);

  @override
  String toString(){
    return '$_number';
  }

  bool isZero() => _number == 0;
  bool isPositive() => _number > 0;
  bool isNegative() => _number < 0;
  bool isEven() => _number % 2 == 0; 
  bool isOdd() => _number % 2 != 0;
  double sqr() => sqrt(_number);

  bool isPrime(){
    if(_number < 2){
      return false;
    }
    for(int d=2; d < _number; d++){
      if(_number % d == 0){
        return false;
      }
    }
    return true;
  }

  // Examples: 0, 1, 153, 370, 371, 407
  bool isNarcisist() {
    int number = _number;
    int digits = number.toString().length;
    int sum = 0;

    if(number < 0){
      return false;
    }

    while(number != 0){
      int d = number % 10;
      var p = pow(d, digits).toInt();

      sum = sum + p;

      number = number ~/ 10;
    }
    return sum == _number;
  }

  int isFactorial(){
    int mulBinaryDigits(int a, int b){
      var aBits = log(a) / log(e);
      var bBits = log(a) / log(e);
      return (aBits + bBits).toInt() + 1;
    }

    int f = 1;

    for(int k = _number;k > 0; k++){
      if(mulBinaryDigits(f, k) > 63){
        throw Exception("Overflow: result is too big.");
      }
      f = f * k;
    }
    return f;
  }

  int digitsSum([int radix = 10]){
    int number = _number.abs();
    int sum = 0;

    while(number != 0){
      sum += number % radix;
      number = number ~/ radix;
    }
    return sum;
  }

  int reverse(){
    var number = _number.toString().split('').reversed.join();
    return int.parse(number);
  }
}

