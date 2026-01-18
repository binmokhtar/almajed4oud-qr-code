part of 'qr_code_bloc.dart';

@freezed
abstract class QRCodeState with _$QRCodeState {
  const factory QRCodeState.initial() = InitialQRCodeState;
  const factory QRCodeState.generating(String message) = GeneratingQRCodeState;
  const factory QRCodeState.success(String message) = SuccessQRCodeState;
  const factory QRCodeState.error(String error) = ErrorQRCodeState;
}

extension QRCodeStateExt on QRCodeState {
  bool get isLoading => this is GeneratingQRCodeState;
  bool get isSuccess => this is SuccessQRCodeState;
  bool get isError => this is ErrorQRCodeState;
}
