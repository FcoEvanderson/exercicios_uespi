class Rational{
  final int num;
  final int den;

   Rational(this.num, [this.den = 1]){
    if(den == 0){
      throw Exception("Demoninator cannot be zero");
    }
   }

   factory Rational.from(Rational r){
    return Rational(r.num, r.den);
   }

  factory Rational.fromString(String r){
    var tokens = r.split('/');
    if(tokens.isEmpty || tokens.length > 2){
      throw Exception("Invalid argument: $r");
    }
    var den = (tokens.length == 2) ? int.tryParse(tokens[1]) : 1;
    var num = int.tryParse(tokens[0]);
    if ((num == null) || (den == null)){
      throw Exception("Invalid argument: $r");
    }
    return Rational(num, den);
  }

  @override
  String toString(){
    String n = (den < 0) ? '${-num}' : '$num';
    String d = "${den.abs()}";
    return (d != 1) ? "$n/$d" : n;
  }

  Rational simplify(){
    int numerator = num.abs();
    int denominator = den.abs();
    int max = (numerator < denominator) ? numerator : denominator;
    int div = 2;
    
    while(div <= max){
      if((numerator % div == 0)&&(denominator % div == 0)){
        numerator ~/= div; // num = num ~/ div
        denominator ~/= div; // den = num ~/ div
        max = (numerator < denominator) ? numerator : denominator;
      } else{
        div++;
      }
    }
    numerator = numerator.sign * numerator;
    denominator = denominator.sign * denominator;
    return Rational(numerator, denominator);
  }

  double toDouble() => num/den;

  Rational operator +(Rational r) => Rational(
      num * r.den + r.num * den,
      den * r.den,
    );
  Rational operator -(Rational r) => Rational(
      num * r.den - r.num * den,
      den * r.den,
    );

    Rational operator -() => Rational(
      -num,
      den,
    );

  Rational operator *(Rational r) => Rational(
      num * r.num ,
      den * r.den,
    );
  Rational operator /(Rational r) => Rational(
      num * r.den,
      den - r.num,
    );

  int _compare(Rational r) => (toDouble() - r.toDouble()).sign.toInt();

  bool operator >(Rational r) => _compare(r) > 0;
  bool operator <(Rational r) => _compare(r) < 0;
  bool operator >=(Rational r) => _compare(r) >= 0;
  bool operator <=(Rational r) => _compare(r) <= 0;

  @override
  bool operator ==(Object other){
    if(other is Rational){
      return _compare(other) == 0;
    }
    return false;
  }
}
