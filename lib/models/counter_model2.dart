import 'package:get/get.dart';
import 'package:get_fluttered/models/data/counter.dart';

import 'counter_event.dart';

/// Benefits:
/// simple, straightforward
/// functionally immutable given final variable
/// able to keep list of every event
/// clean? way of managing each event
/// Events decoupled from object
///
/// Drawbacks:
/// not as simple, straightforward as model1
/// state still linked with object

class CounterModel {
  final List<Counter> _counterList = [
    Counter(),
    Counter(counter: 3.obs),
    Counter(counter: 7.obs),
  ];

  List<Counter> get counterList => _counterList;

  void event(CounterEvent newEvent) {
    newEvent.map(
        add: (m) => _counterList.add(Counter(counter: m.value?.obs)),
        remove: (m) => (m.counter == null)
            ? _counterList.removeLast()
            : _counterList.removeWhere((e) => e == m.counter));
  }
}
