part of 'counter_model.dart';

@freezed
abstract class CounterEvent implements _$CounterEvent {
  CounterEvent._();
  factory CounterEvent.add([int value]) = _Add;
  factory CounterEvent.remove([Counter counter]) = _Remove;
}
