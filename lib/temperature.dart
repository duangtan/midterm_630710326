import 'dart:io';
import 'dart:math';

enum Result {
  tooHigh,
  tooLow,
  correct
}


class Temper {
  static const defaultMaxRandom = 100;
  int? _answer;
  int _guessCount = 0;
  static final List<int> guessCountList = [];


  celsiustofahren(int num){
    return (9/5)*num + 32;
  }
  celsiustokelvin(int num){
    return num+273.15;
  }
  fahrentocelsius(int num){
    return (num-32)/1.80;
  }
  fahrentokelvin(int num){
    return (num + 459.67) * (5/9);
  }
  kelvintocelsius(int num){
    return num - 273.15;
  }kelvintofahren(int num){
    return num * (9/5) - 459.67;
  }


  int get guessCount {
    return _guessCount;
  }

  void addCountList() {
    guessCountList.add(_guessCount);
  }


}