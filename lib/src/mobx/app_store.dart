import 'package:mobx/mobx.dart';

class AppStore {
  final counter = Observable<int>(0);
  late final increment = Action(_increment);

  _increment() {
    counter.value++;
  }
}
