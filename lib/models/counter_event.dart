import 'package:freezed_annotation/freezed_annotation.dart';

import 'data/counter.dart';

part 'counter_event.freezed.dart';

@freezed
abstract class CounterEvent implements _$CounterEvent {
  CounterEvent._();
  factory CounterEvent.add([int value]) = _Add;
  factory CounterEvent.remove([Counter counter]) = _Remove;
}
