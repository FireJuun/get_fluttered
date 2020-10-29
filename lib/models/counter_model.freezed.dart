// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'counter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CounterEventTearOff {
  const _$CounterEventTearOff();

// ignore: unused_element
  _Add add([int value]) {
    return _Add(
      value,
    );
  }

// ignore: unused_element
  _Remove remove([Counter counter]) {
    return _Remove(
      counter,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CounterEvent = _$CounterEventTearOff();

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result remove(Counter counter),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result remove(Counter counter),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_Add value),
    @required Result remove(_Remove value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_Add value),
    Result remove(_Remove value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res> implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  final CounterEvent _value;
  // ignore: unused_field
  final $Res Function(CounterEvent) _then;
}

/// @nodoc
abstract class _$AddCopyWith<$Res> {
  factory _$AddCopyWith(_Add value, $Res Function(_Add) then) =
      __$AddCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class __$AddCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements _$AddCopyWith<$Res> {
  __$AddCopyWithImpl(_Add _value, $Res Function(_Add) _then)
      : super(_value, (v) => _then(v as _Add));

  @override
  _Add get _value => super._value as _Add;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_Add(
      value == freezed ? _value.value : value as int,
    ));
  }
}

/// @nodoc
class _$_Add extends _Add {
  _$_Add([this.value]) : super._();

  @override
  final int value;

  @override
  String toString() {
    return 'CounterEvent.add(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Add &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  _$AddCopyWith<_Add> get copyWith =>
      __$AddCopyWithImpl<_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result remove(Counter counter),
  }) {
    assert(add != null);
    assert(remove != null);
    return add(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result remove(Counter counter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_Add value),
    @required Result remove(_Remove value),
  }) {
    assert(add != null);
    assert(remove != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_Add value),
    Result remove(_Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add extends CounterEvent {
  _Add._() : super._();
  factory _Add([int value]) = _$_Add;

  int get value;
  _$AddCopyWith<_Add> get copyWith;
}

/// @nodoc
abstract class _$RemoveCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) then) =
      __$RemoveCopyWithImpl<$Res>;
  $Res call({Counter counter});
}

/// @nodoc
class __$RemoveCopyWithImpl<$Res> extends _$CounterEventCopyWithImpl<$Res>
    implements _$RemoveCopyWith<$Res> {
  __$RemoveCopyWithImpl(_Remove _value, $Res Function(_Remove) _then)
      : super(_value, (v) => _then(v as _Remove));

  @override
  _Remove get _value => super._value as _Remove;

  @override
  $Res call({
    Object counter = freezed,
  }) {
    return _then(_Remove(
      counter == freezed ? _value.counter : counter as Counter,
    ));
  }
}

/// @nodoc
class _$_Remove extends _Remove {
  _$_Remove([this.counter]) : super._();

  @override
  final Counter counter;

  @override
  String toString() {
    return 'CounterEvent.remove(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Remove &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality().equals(other.counter, counter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(counter);

  @override
  _$RemoveCopyWith<_Remove> get copyWith =>
      __$RemoveCopyWithImpl<_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(int value),
    @required Result remove(Counter counter),
  }) {
    assert(add != null);
    assert(remove != null);
    return remove(counter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(int value),
    Result remove(Counter counter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(counter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_Add value),
    @required Result remove(_Remove value),
  }) {
    assert(add != null);
    assert(remove != null);
    return remove(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_Add value),
    Result remove(_Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove extends CounterEvent {
  _Remove._() : super._();
  factory _Remove([Counter counter]) = _$_Remove;

  Counter get counter;
  _$RemoveCopyWith<_Remove> get copyWith;
}
