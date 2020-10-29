import 'package:get/get.dart';
import 'package:get_fluttered/models/data/counter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.dart';
part 'counter_model.freezed.dart';

class CounterModel {
  final List<Counter> _counterList = [
    Counter(),
    Counter(counter: 3.obs),
    Counter(counter: 7.obs),
  ];

  List<Counter> get counterList => _counterList;
  // set counterList(value) => _counterList = value;

  void event(CounterEvent newEvent) {
    newEvent.map(
        add: (m) => _counterList.add(Counter(counter: m.value?.obs)),
        remove: (m) => (m.counter == null)
            ? _counterList.removeLast()
            : _counterList.removeWhere((e) => e == m.counter));
  }

  // void addCounter([int value]) =>
  //     _counterList.add(Counter(counter: value?.obs));

  // void removeCounter([Counter counter]) {
  //   (counter == null)
  //       ? _counterList.removeLast()
  //       : _counterList.removeWhere((e) => e == counter);
  // }
}
