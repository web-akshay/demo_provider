import 'package:flutter/cupertino.dart';

class CountProvider with ChangeNotifier {

int _count = 0;

int get count => _count;

// incrementCount(){
//   debugPrint('incrementCount-->');
//   _count++;
//   notifyListeners();
// }
  void incrementCount() {
    _count++;
    notifyListeners();
  }

void decrementCount(){
  debugPrint('incrementCount-->');
  _count--;
  notifyListeners();
}

}