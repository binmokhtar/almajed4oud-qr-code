import 'dart:typed_data';
import 'package:qr_code/helpers/models.dart';

class PdfGenerationTask {
  final GenerateModel model;
  final Uint8List regularFont;
  final Uint8List boldFont;
  final Uint8List brandFont;
  final Uint8List logo;
  final Uint8List solidFont;
  final Uint8List google;

  PdfGenerationTask({
    required this.model,
    required this.regularFont,
    required this.boldFont,
    required this.brandFont,
    required this.logo,
    required this.solidFont,
    required this.google,
  });
}
