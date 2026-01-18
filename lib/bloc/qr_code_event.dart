part of 'qr_code_bloc.dart';

@freezed
abstract class QRCodeEvent with _$QRCodeEvent {
  const factory QRCodeEvent.loadAssets() = LoadAssets;
  const factory QRCodeEvent.writeContent() = WriteContent;
  const factory QRCodeEvent.saveContent(Document pdf) = SaveContent;
  const factory QRCodeEvent.downloadPdf(Uint8List bytes) = DownloadPdf;
}
