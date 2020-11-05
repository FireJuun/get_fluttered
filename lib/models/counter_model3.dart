import 'package:get/get.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'counter_event.dart';
import 'data/counter.dart';

part 'counter_model3.freezed.dart';

/// Benefits:
/// immutable classes
/// able to keep list of every event
/// clean? way of managing each event
/// Events decoupled from object
/// benefits of a freezed class for the object
///
/// Drawbacks:
/// not particularly simple
/// state still linked with object
/// requires more code generation

@freezed
abstract class CounterModel implements _$CounterModel {
  CounterModel._();

  factory CounterModel(List<Counter> counterList) = _CounterModel;

  factory CounterModel.initial() => CounterModel(
        [
          Counter(),
          Counter(counter: 3.obs),
          Counter(counter: 7.obs),
        ],
      );

  void event(CounterEvent newEvent) {
    newEvent.map(
        add: (m) => counterList.add(Counter(counter: m.value?.obs)),
        remove: (m) => (m.counter == null)
            ? counterList.removeLast()
            : counterList.removeWhere((e) => e == m.counter));
  }
}
