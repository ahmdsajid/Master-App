import 'dart:math';

class Logic {

  Logic({this.height,this.Weight});

  int? height;
  int? Weight;
  double bmi =0;

  String calculatebmi(){

    bmi = (Weight! / pow(height! / 100,2));
    return bmi.toStringAsFixed(1);

  }

  String getresult(){

    if(bmi>=25){
      return "OverWeight";
    }
    else if(bmi>18.5){
      return "Normal";
    }
    else {
      return "UnderWeight";
    }
  }

  String getinfo(){

    if(bmi>=25){
      return "Overweight BMI (25 - 29.9):\n\nDescription: \n\nYour BMI is above the normal range,\nwhich suggests that you are carrying\n more weight than is considered healthy\n for your height.Include a balanced\n diet and regular physical activity can\n help you achieve a healthier weight";
    }
    else if(bmi>18.5){
      return "Normal BMI (18.5 - 24.9):\n\nDescription:\n\nYour BMI is within the normal range.\nThis suggests that you have a healthy\nbody weight relative to your height.Keep\nup with a balanced diet and regular exe-\nrcise to maintain your current health.";
    }
    else {
      return "Underweight BMI (Below 18.5):\n\nDescription:\n\nYour BMI is below the normal range,\nwhich indicates that are in underweight.\nIt is important to ensure you are getting\nenough nutrients.Consider speaking\n with a healthcare provider to determine\n the best course of action.";
    }
  }
}