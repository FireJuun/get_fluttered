import 'package:get/get.dart';
import 'package:get_fluttered/models/data/counter.dart';

class CounterModel {
  final List<Counter> _counterList = [
    Counter(),
    Counter(counter: 3.obs),
    Counter(counter: 7.obs),
  ];

  List<Counter> get counterList => _counterList;
  // set counterList(value) => _counterList = value;

  void addCounter([int value]) =>
      _counterList.add(Counter(counter: value?.obs));

  void removeCounter([Counter counter]) {
    (counter == null)
        ? _counterList.removeLast()
        : _counterList.removeWhere((e) => e == counter);
  }
}
