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
}
