// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QRCodeEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QRCodeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeEvent()';
}


}

/// @nodoc
class $QRCodeEventCopyWith<$Res>  {
$QRCodeEventCopyWith(QRCodeEvent _, $Res Function(QRCodeEvent) __);
}


/// Adds pattern-matching-related methods to [QRCodeEvent].
extension QRCodeEventPatterns on QRCodeEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadAssets value)?  loadAssets,TResult Function( WriteContent value)?  writeContent,TResult Function( SaveContent value)?  saveContent,TResult Function( DownloadPdf value)?  downloadPdf,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadAssets() when loadAssets != null:
return loadAssets(_that);case WriteContent() when writeContent != null:
return writeContent(_that);case SaveContent() when saveContent != null:
return saveContent(_that);case DownloadPdf() when downloadPdf != null:
return downloadPdf(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadAssets value)  loadAssets,required TResult Function( WriteContent value)  writeContent,required TResult Function( SaveContent value)  saveContent,required TResult Function( DownloadPdf value)  downloadPdf,}){
final _that = this;
switch (_that) {
case LoadAssets():
return loadAssets(_that);case WriteContent():
return writeContent(_that);case SaveContent():
return saveContent(_that);case DownloadPdf():
return downloadPdf(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadAssets value)?  loadAssets,TResult? Function( WriteContent value)?  writeContent,TResult? Function( SaveContent value)?  saveContent,TResult? Function( DownloadPdf value)?  downloadPdf,}){
final _that = this;
switch (_that) {
case LoadAssets() when loadAssets != null:
return loadAssets(_that);case WriteContent() when writeContent != null:
return writeContent(_that);case SaveContent() when saveContent != null:
return saveContent(_that);case DownloadPdf() when downloadPdf != null:
return downloadPdf(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadAssets,TResult Function()?  writeContent,TResult Function( Document pdf)?  saveContent,TResult Function( Uint8List bytes)?  downloadPdf,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadAssets() when loadAssets != null:
return loadAssets();case WriteContent() when writeContent != null:
return writeContent();case SaveContent() when saveContent != null:
return saveContent(_that.pdf);case DownloadPdf() when downloadPdf != null:
return downloadPdf(_that.bytes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadAssets,required TResult Function()  writeContent,required TResult Function( Document pdf)  saveContent,required TResult Function( Uint8List bytes)  downloadPdf,}) {final _that = this;
switch (_that) {
case LoadAssets():
return loadAssets();case WriteContent():
return writeContent();case SaveContent():
return saveContent(_that.pdf);case DownloadPdf():
return downloadPdf(_that.bytes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadAssets,TResult? Function()?  writeContent,TResult? Function( Document pdf)?  saveContent,TResult? Function( Uint8List bytes)?  downloadPdf,}) {final _that = this;
switch (_that) {
case LoadAssets() when loadAssets != null:
return loadAssets();case WriteContent() when writeContent != null:
return writeContent();case SaveContent() when saveContent != null:
return saveContent(_that.pdf);case DownloadPdf() when downloadPdf != null:
return downloadPdf(_that.bytes);case _:
  return null;

}
}

}

/// @nodoc


class LoadAssets with DiagnosticableTreeMixin implements QRCodeEvent {
  const LoadAssets();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeEvent.loadAssets'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadAssets);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeEvent.loadAssets()';
}


}




/// @nodoc


class WriteContent with DiagnosticableTreeMixin implements QRCodeEvent {
  const WriteContent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeEvent.writeContent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WriteContent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeEvent.writeContent()';
}


}




/// @nodoc


class SaveContent with DiagnosticableTreeMixin implements QRCodeEvent {
  const SaveContent(this.pdf);
  

 final  Document pdf;

/// Create a copy of QRCodeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveContentCopyWith<SaveContent> get copyWith => _$SaveContentCopyWithImpl<SaveContent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeEvent.saveContent'))
    ..add(DiagnosticsProperty('pdf', pdf));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveContent&&(identical(other.pdf, pdf) || other.pdf == pdf));
}


@override
int get hashCode => Object.hash(runtimeType,pdf);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeEvent.saveContent(pdf: $pdf)';
}


}

/// @nodoc
abstract mixin class $SaveContentCopyWith<$Res> implements $QRCodeEventCopyWith<$Res> {
  factory $SaveContentCopyWith(SaveContent value, $Res Function(SaveContent) _then) = _$SaveContentCopyWithImpl;
@useResult
$Res call({
 Document pdf
});




}
/// @nodoc
class _$SaveContentCopyWithImpl<$Res>
    implements $SaveContentCopyWith<$Res> {
  _$SaveContentCopyWithImpl(this._self, this._then);

  final SaveContent _self;
  final $Res Function(SaveContent) _then;

/// Create a copy of QRCodeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pdf = null,}) {
  return _then(SaveContent(
null == pdf ? _self.pdf : pdf // ignore: cast_nullable_to_non_nullable
as Document,
  ));
}


}

/// @nodoc


class DownloadPdf with DiagnosticableTreeMixin implements QRCodeEvent {
  const DownloadPdf(this.bytes);
  

 final  Uint8List bytes;

/// Create a copy of QRCodeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadPdfCopyWith<DownloadPdf> get copyWith => _$DownloadPdfCopyWithImpl<DownloadPdf>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeEvent.downloadPdf'))
    ..add(DiagnosticsProperty('bytes', bytes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadPdf&&const DeepCollectionEquality().equals(other.bytes, bytes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bytes));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeEvent.downloadPdf(bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class $DownloadPdfCopyWith<$Res> implements $QRCodeEventCopyWith<$Res> {
  factory $DownloadPdfCopyWith(DownloadPdf value, $Res Function(DownloadPdf) _then) = _$DownloadPdfCopyWithImpl;
@useResult
$Res call({
 Uint8List bytes
});




}
/// @nodoc
class _$DownloadPdfCopyWithImpl<$Res>
    implements $DownloadPdfCopyWith<$Res> {
  _$DownloadPdfCopyWithImpl(this._self, this._then);

  final DownloadPdf _self;
  final $Res Function(DownloadPdf) _then;

/// Create a copy of QRCodeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bytes = null,}) {
  return _then(DownloadPdf(
null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as Uint8List,
  ));
}


}

/// @nodoc
mixin _$QRCodeState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QRCodeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeState()';
}


}

/// @nodoc
class $QRCodeStateCopyWith<$Res>  {
$QRCodeStateCopyWith(QRCodeState _, $Res Function(QRCodeState) __);
}


/// Adds pattern-matching-related methods to [QRCodeState].
extension QRCodeStatePatterns on QRCodeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialQRCodeState value)?  initial,TResult Function( GeneratingQRCodeState value)?  generating,TResult Function( SuccessQRCodeState value)?  success,TResult Function( ErrorQRCodeState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialQRCodeState() when initial != null:
return initial(_that);case GeneratingQRCodeState() when generating != null:
return generating(_that);case SuccessQRCodeState() when success != null:
return success(_that);case ErrorQRCodeState() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialQRCodeState value)  initial,required TResult Function( GeneratingQRCodeState value)  generating,required TResult Function( SuccessQRCodeState value)  success,required TResult Function( ErrorQRCodeState value)  error,}){
final _that = this;
switch (_that) {
case InitialQRCodeState():
return initial(_that);case GeneratingQRCodeState():
return generating(_that);case SuccessQRCodeState():
return success(_that);case ErrorQRCodeState():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialQRCodeState value)?  initial,TResult? Function( GeneratingQRCodeState value)?  generating,TResult? Function( SuccessQRCodeState value)?  success,TResult? Function( ErrorQRCodeState value)?  error,}){
final _that = this;
switch (_that) {
case InitialQRCodeState() when initial != null:
return initial(_that);case GeneratingQRCodeState() when generating != null:
return generating(_that);case SuccessQRCodeState() when success != null:
return success(_that);case ErrorQRCodeState() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String message)?  generating,TResult Function( String message)?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialQRCodeState() when initial != null:
return initial();case GeneratingQRCodeState() when generating != null:
return generating(_that.message);case SuccessQRCodeState() when success != null:
return success(_that.message);case ErrorQRCodeState() when error != null:
return error(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String message)  generating,required TResult Function( String message)  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case InitialQRCodeState():
return initial();case GeneratingQRCodeState():
return generating(_that.message);case SuccessQRCodeState():
return success(_that.message);case ErrorQRCodeState():
return error(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String message)?  generating,TResult? Function( String message)?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case InitialQRCodeState() when initial != null:
return initial();case GeneratingQRCodeState() when generating != null:
return generating(_that.message);case SuccessQRCodeState() when success != null:
return success(_that.message);case ErrorQRCodeState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class InitialQRCodeState with DiagnosticableTreeMixin implements QRCodeState {
  const InitialQRCodeState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialQRCodeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeState.initial()';
}


}




/// @nodoc


class GeneratingQRCodeState with DiagnosticableTreeMixin implements QRCodeState {
  const GeneratingQRCodeState(this.message);
  

 final  String message;

/// Create a copy of QRCodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratingQRCodeStateCopyWith<GeneratingQRCodeState> get copyWith => _$GeneratingQRCodeStateCopyWithImpl<GeneratingQRCodeState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeState.generating'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratingQRCodeState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeState.generating(message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneratingQRCodeStateCopyWith<$Res> implements $QRCodeStateCopyWith<$Res> {
  factory $GeneratingQRCodeStateCopyWith(GeneratingQRCodeState value, $Res Function(GeneratingQRCodeState) _then) = _$GeneratingQRCodeStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GeneratingQRCodeStateCopyWithImpl<$Res>
    implements $GeneratingQRCodeStateCopyWith<$Res> {
  _$GeneratingQRCodeStateCopyWithImpl(this._self, this._then);

  final GeneratingQRCodeState _self;
  final $Res Function(GeneratingQRCodeState) _then;

/// Create a copy of QRCodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GeneratingQRCodeState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SuccessQRCodeState with DiagnosticableTreeMixin implements QRCodeState {
  const SuccessQRCodeState(this.message);
  

 final  String message;

/// Create a copy of QRCodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessQRCodeStateCopyWith<SuccessQRCodeState> get copyWith => _$SuccessQRCodeStateCopyWithImpl<SuccessQRCodeState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeState.success'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessQRCodeState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $SuccessQRCodeStateCopyWith<$Res> implements $QRCodeStateCopyWith<$Res> {
  factory $SuccessQRCodeStateCopyWith(SuccessQRCodeState value, $Res Function(SuccessQRCodeState) _then) = _$SuccessQRCodeStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SuccessQRCodeStateCopyWithImpl<$Res>
    implements $SuccessQRCodeStateCopyWith<$Res> {
  _$SuccessQRCodeStateCopyWithImpl(this._self, this._then);

  final SuccessQRCodeState _self;
  final $Res Function(SuccessQRCodeState) _then;

/// Create a copy of QRCodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SuccessQRCodeState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ErrorQRCodeState with DiagnosticableTreeMixin implements QRCodeState {
  const ErrorQRCodeState(this.error);
  

 final  String error;

/// Create a copy of QRCodeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorQRCodeStateCopyWith<ErrorQRCodeState> get copyWith => _$ErrorQRCodeStateCopyWithImpl<ErrorQRCodeState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QRCodeState.error'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorQRCodeState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QRCodeState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorQRCodeStateCopyWith<$Res> implements $QRCodeStateCopyWith<$Res> {
  factory $ErrorQRCodeStateCopyWith(ErrorQRCodeState value, $Res Function(ErrorQRCodeState) _then) = _$ErrorQRCodeStateCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorQRCodeStateCopyWithImpl<$Res>
    implements $ErrorQRCodeStateCopyWith<$Res> {
  _$ErrorQRCodeStateCopyWithImpl(this._self, this._then);

  final ErrorQRCodeState _self;
  final $Res Function(ErrorQRCodeState) _then;

/// Create a copy of QRCodeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorQRCodeState(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
