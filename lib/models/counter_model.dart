import 'package:get/get.dart';
import 'package:get_fluttered/models/data/counter.dart';

class CounterModel {
  List<Counter> counterList = [
    Counter(),
    Counter(counter: 3.obs),
    Counter(counter: 7.obs),
  ];
}
