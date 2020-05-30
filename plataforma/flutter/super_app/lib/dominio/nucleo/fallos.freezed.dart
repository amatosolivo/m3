// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fallos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValorFallidoTearOff {
  const _$ValorFallidoTearOff();

  CorreoInvalido<T> correoInvalido<T>({@required String valorFallido}) {
    return CorreoInvalido<T>(
      valorFallido: valorFallido,
    );
  }

  ClaveMuyCorta<T> claveMuyCorta<T>({@required String valorFallido}) {
    return ClaveMuyCorta<T>(
      valorFallido: valorFallido,
    );
  }
}

// ignore: unused_element
const $ValorFallido = _$ValorFallidoTearOff();

mixin _$ValorFallido<T> {
  String get valorFallido;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result correoInvalido(String valorFallido),
    @required Result claveMuyCorta(String valorFallido),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result correoInvalido(String valorFallido),
    Result claveMuyCorta(String valorFallido),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result correoInvalido(CorreoInvalido<T> value),
    @required Result claveMuyCorta(ClaveMuyCorta<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result correoInvalido(CorreoInvalido<T> value),
    Result claveMuyCorta(ClaveMuyCorta<T> value),
    @required Result orElse(),
  });

  $ValorFallidoCopyWith<T, ValorFallido<T>> get copyWith;
}

abstract class $ValorFallidoCopyWith<T, $Res> {
  factory $ValorFallidoCopyWith(
          ValorFallido<T> value, $Res Function(ValorFallido<T>) then) =
      _$ValorFallidoCopyWithImpl<T, $Res>;
  $Res call({String valorFallido});
}

class _$ValorFallidoCopyWithImpl<T, $Res>
    implements $ValorFallidoCopyWith<T, $Res> {
  _$ValorFallidoCopyWithImpl(this._value, this._then);

  final ValorFallido<T> _value;
  // ignore: unused_field
  final $Res Function(ValorFallido<T>) _then;

  @override
  $Res call({
    Object valorFallido = freezed,
  }) {
    return _then(_value.copyWith(
      valorFallido: valorFallido == freezed
          ? _value.valorFallido
          : valorFallido as String,
    ));
  }
}

abstract class $CorreoInvalidoCopyWith<T, $Res>
    implements $ValorFallidoCopyWith<T, $Res> {
  factory $CorreoInvalidoCopyWith(
          CorreoInvalido<T> value, $Res Function(CorreoInvalido<T>) then) =
      _$CorreoInvalidoCopyWithImpl<T, $Res>;
  @override
  $Res call({String valorFallido});
}

class _$CorreoInvalidoCopyWithImpl<T, $Res>
    extends _$ValorFallidoCopyWithImpl<T, $Res>
    implements $CorreoInvalidoCopyWith<T, $Res> {
  _$CorreoInvalidoCopyWithImpl(
      CorreoInvalido<T> _value, $Res Function(CorreoInvalido<T>) _then)
      : super(_value, (v) => _then(v as CorreoInvalido<T>));

  @override
  CorreoInvalido<T> get _value => super._value as CorreoInvalido<T>;

  @override
  $Res call({
    Object valorFallido = freezed,
  }) {
    return _then(CorreoInvalido<T>(
      valorFallido: valorFallido == freezed
          ? _value.valorFallido
          : valorFallido as String,
    ));
  }
}

class _$CorreoInvalido<T>
    with DiagnosticableTreeMixin
    implements CorreoInvalido<T> {
  const _$CorreoInvalido({@required this.valorFallido})
      : assert(valorFallido != null);

  @override
  final String valorFallido;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValorFallido<$T>.correoInvalido(valorFallido: $valorFallido)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValorFallido<$T>.correoInvalido'))
      ..add(DiagnosticsProperty('valorFallido', valorFallido));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CorreoInvalido<T> &&
            (identical(other.valorFallido, valorFallido) ||
                const DeepCollectionEquality()
                    .equals(other.valorFallido, valorFallido)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valorFallido);

  @override
  $CorreoInvalidoCopyWith<T, CorreoInvalido<T>> get copyWith =>
      _$CorreoInvalidoCopyWithImpl<T, CorreoInvalido<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result correoInvalido(String valorFallido),
    @required Result claveMuyCorta(String valorFallido),
  }) {
    assert(correoInvalido != null);
    assert(claveMuyCorta != null);
    return correoInvalido(valorFallido);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result correoInvalido(String valorFallido),
    Result claveMuyCorta(String valorFallido),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (correoInvalido != null) {
      return correoInvalido(valorFallido);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result correoInvalido(CorreoInvalido<T> value),
    @required Result claveMuyCorta(ClaveMuyCorta<T> value),
  }) {
    assert(correoInvalido != null);
    assert(claveMuyCorta != null);
    return correoInvalido(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result correoInvalido(CorreoInvalido<T> value),
    Result claveMuyCorta(ClaveMuyCorta<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (correoInvalido != null) {
      return correoInvalido(this);
    }
    return orElse();
  }
}

abstract class CorreoInvalido<T> implements ValorFallido<T> {
  const factory CorreoInvalido({@required String valorFallido}) =
      _$CorreoInvalido<T>;

  @override
  String get valorFallido;
  @override
  $CorreoInvalidoCopyWith<T, CorreoInvalido<T>> get copyWith;
}

abstract class $ClaveMuyCortaCopyWith<T, $Res>
    implements $ValorFallidoCopyWith<T, $Res> {
  factory $ClaveMuyCortaCopyWith(
          ClaveMuyCorta<T> value, $Res Function(ClaveMuyCorta<T>) then) =
      _$ClaveMuyCortaCopyWithImpl<T, $Res>;
  @override
  $Res call({String valorFallido});
}

class _$ClaveMuyCortaCopyWithImpl<T, $Res>
    extends _$ValorFallidoCopyWithImpl<T, $Res>
    implements $ClaveMuyCortaCopyWith<T, $Res> {
  _$ClaveMuyCortaCopyWithImpl(
      ClaveMuyCorta<T> _value, $Res Function(ClaveMuyCorta<T>) _then)
      : super(_value, (v) => _then(v as ClaveMuyCorta<T>));

  @override
  ClaveMuyCorta<T> get _value => super._value as ClaveMuyCorta<T>;

  @override
  $Res call({
    Object valorFallido = freezed,
  }) {
    return _then(ClaveMuyCorta<T>(
      valorFallido: valorFallido == freezed
          ? _value.valorFallido
          : valorFallido as String,
    ));
  }
}

class _$ClaveMuyCorta<T>
    with DiagnosticableTreeMixin
    implements ClaveMuyCorta<T> {
  const _$ClaveMuyCorta({@required this.valorFallido})
      : assert(valorFallido != null);

  @override
  final String valorFallido;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValorFallido<$T>.claveMuyCorta(valorFallido: $valorFallido)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValorFallido<$T>.claveMuyCorta'))
      ..add(DiagnosticsProperty('valorFallido', valorFallido));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClaveMuyCorta<T> &&
            (identical(other.valorFallido, valorFallido) ||
                const DeepCollectionEquality()
                    .equals(other.valorFallido, valorFallido)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valorFallido);

  @override
  $ClaveMuyCortaCopyWith<T, ClaveMuyCorta<T>> get copyWith =>
      _$ClaveMuyCortaCopyWithImpl<T, ClaveMuyCorta<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result correoInvalido(String valorFallido),
    @required Result claveMuyCorta(String valorFallido),
  }) {
    assert(correoInvalido != null);
    assert(claveMuyCorta != null);
    return claveMuyCorta(valorFallido);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result correoInvalido(String valorFallido),
    Result claveMuyCorta(String valorFallido),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (claveMuyCorta != null) {
      return claveMuyCorta(valorFallido);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result correoInvalido(CorreoInvalido<T> value),
    @required Result claveMuyCorta(ClaveMuyCorta<T> value),
  }) {
    assert(correoInvalido != null);
    assert(claveMuyCorta != null);
    return claveMuyCorta(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result correoInvalido(CorreoInvalido<T> value),
    Result claveMuyCorta(ClaveMuyCorta<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (claveMuyCorta != null) {
      return claveMuyCorta(this);
    }
    return orElse();
  }
}

abstract class ClaveMuyCorta<T> implements ValorFallido<T> {
  const factory ClaveMuyCorta({@required String valorFallido}) =
      _$ClaveMuyCorta<T>;

  @override
  String get valorFallido;
  @override
  $ClaveMuyCortaCopyWith<T, ClaveMuyCorta<T>> get copyWith;
}
