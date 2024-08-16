import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counterValue; //this is the value that will always be increment either decremented when the botton is tapped

  CounterProvider({
    this.counterValue = 0,
  });
/*this two functions are responsible for performing the
increment and decrement functions when the buttons are tapped on 
respectively*/

  void incrementNumber() {
    counterValue++;
    notifyListeners(); // To notify all the listeners that the value may change
  }

  void decrementNumber() {
    counterValue--;
    notifyListeners();
  }
}
