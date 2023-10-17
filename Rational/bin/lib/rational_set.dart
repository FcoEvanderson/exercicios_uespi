import 'rational.dart';

class RationalSet{
  final _set = <Rational>[];

  @override
  String toString() => _set.toString().replaceFirst("[", "{").replaceFirst("]", "}");

  void add(Rational r){
    if(!constains(r)){ 
    _set.add(r);
    _set.sort((e1,e2) => (e1.toDouble() - e2.toDouble()).sign.toInt());
    }
  }

  bool constains(Rational r){
    for(var elem in _set){
      if(r == elem){
        return true;
      }
    }
    return false;
  }


}
