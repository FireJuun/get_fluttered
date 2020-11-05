// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'counter_model3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CounterModelTearOff {
  const _$CounterModelTearOff();

// ignore: unused_element
  _CounterModel call(List<Counter> counterList) {
    return _CounterModel(
      counterList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CounterModel = _$CounterModelTearOff();

/// @nodoc
mixin _$CounterModel {
  List<Counter> get counterList;

  $CounterModelCopyWith<CounterModel> get copyWith;
}

/// @nodoc
abstract class $CounterModelCopyWith<$Res> {
  factory $CounterModelCopyWith(
          CounterModel value, $Res Function(CounterModel) then) =
      _$CounterModelCopyWithImpl<$Res>;
  $Res call({List<Counter> counterList});
}

/// @nodoc
class _$CounterModelCopyWithImpl<$Res> implements $CounterModelCopyWith<$Res> {
  _$CounterModelCopyWithImpl(this._value, this._then);

  final CounterModel _value;
  // ignore: unused_field
  final $Res Function(CounterModel) _then;

  @override
  $Res call({
    Object counterList = freezed,
  }) {
    return _then(_value.copyWith(
      counterList: counterList == freezed
          ? _value.counterList
          : counterList as List<Counter>,
    ));
  }
}

/// @nodoc
abstract class _$CounterModelCopyWith<$Res>
    implements $CounterModelCopyWith<$Res> {
  factory _$CounterModelCopyWith(
          _CounterModel value, $Res Function(_CounterModel) then) =
      __$CounterModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Counter> counterList});
}

/// @nodoc
class __$CounterModelCopyWithImpl<$Res> extends _$CounterModelCopyWithImpl<$Res>
    implements _$CounterModelCopyWith<$Res> {
  __$CounterModelCopyWithImpl(
      _CounterModel _value, $Res Function(_CounterModel) _then)
      : super(_value, (v) => _then(v as _CounterModel));

  @override
  _CounterModel get _value => super._value as _CounterModel;

  @override
  $Res call({
    Object counterList = freezed,
  }) {
    return _then(_CounterModel(
      counterList == freezed
          ? _value.counterList
          : counterList as List<Counter>,
    ));
  }
}

/// @nodoc
class _$_CounterModel extends _CounterModel {
  _$_CounterModel(this.counterList)
      : assert(counterList != null),
        super._();

  @override
  final List<Counter> counterList;

  @override
  String toString() {
    return 'CounterModel(counterList: $counterList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounterModel &&
            (identical(other.counterList, counterList) ||
                const DeepCollectionEquality()
                    .equals(other.counterList, counterList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(counterList);

  @override
  _$CounterModelCopyWith<_CounterModel> get copyWith =>
      __$CounterModelCopyWithImpl<_CounterModel>(this, _$identity);
}

abstract class _CounterModel extends CounterModel {
  _CounterModel._() : super._();
  factory _CounterModel(List<Counter> counterList) = _$_CounterModel;

  @override
  List<Counter> get counterList;
  @override
  _$CounterModelCopyWith<_CounterModel> get copyWith;
}
