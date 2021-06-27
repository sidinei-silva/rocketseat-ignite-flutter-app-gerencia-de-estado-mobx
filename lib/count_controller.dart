import 'package:mobx/mobx.dart';

class CountController {
  CountController() {
    increment = Action(_increment);
  }

  final _count = Observable(0);

  int get count => _count.value;
  set count(int value) => _count.value = value;

  late Action increment;

  void _increment() {
    count++;
  }
}
