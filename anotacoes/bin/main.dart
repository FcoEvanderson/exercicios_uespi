import '../lib/number.dart';
void main(){
  var n1 = const Number(10);
  var n2 = const Number(10);

  print('n1=$n1\t (${n1.hashCode})');
  print('n1=$n2\t (${n2.hashCode})');
  print('n1 is zero\t: ${n1.isZero()}');
  print('n1 is Positive\t: ${n1.isPositive()}');
  print('n1 is Negative\t: ${n1.isNegative()}');
  print('n1 is Even\t: ${n1.isEven()}');
  print('n1 is Odd\t: ${n1.isOdd()}');
  print('n1 is Prime\t: ${n1.isPrime()}');
  print('n1 is Narcisist\t: ${n1.isNarcisist()}');
  print('n1 factored\t: ${n1.isFactorial()}');
  print('n1 reversed\t: ${n1.reverse()}');
}