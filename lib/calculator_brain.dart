import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({required this.height,required this.weight, required this.age});
  
  final int height;
  final int weight;
  final int age;

  double _bmi = 0;
  
  String calculateBMI(){
    _bmi = weight/pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi >= 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    String interpretation = "";
    if(_bmi >= 25){
      interpretation = 'You have a higher than normal body weight. ';
      if(age >= 50){
        interpretation += "Due to age, this could be an issue.";
      }
      return interpretation;
    }else if(_bmi > 18.5){
      interpretation = 'You have a normal body weight.';
    }else{
      interpretation = 'You have a lower than normal body weight. ';
      if(age >= 50){
        interpretation += "Due to age, this could be an issue.";
      }
    }

    return interpretation;
  }



}