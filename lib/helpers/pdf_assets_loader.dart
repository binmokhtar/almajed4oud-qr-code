import 'package:flutter/services.dart';

class PdfAssetsLoader {
  static Uint8List? _regularFont;
  static Uint8List? _boldFont;
  static Uint8List? _brandFont;
  static Uint8List? _logo;
  static Uint8List? _solidFont;
  static Uint8List? _google;

  static Future<void> loadOnce() async {
    if (_regularFont != null) return;

    final results = await Future.wait([
      rootBundle.load('assets/fonts/Alexandria-Regular.ttf'),
      rootBundle.load('assets/fonts/Alexandria-Bold.ttf'),
      rootBundle.load('assets/fonts/fa-brands-400.ttf'),
      rootBundle.load('assets/logo/almajed2.png'),
      rootBundle.load('assets/fonts/fa-solid-900.ttf'),
      rootBundle.load('assets/logo/google.png'),
    ]);
    _regularFont = results[0].buffer.asUint8List();
    _boldFont = results[1].buffer.asUint8List();
    _brandFont = results[2].buffer.asUint8List();
    _logo = results[3].buffer.asUint8List();
    _solidFont = results[4].buffer.asUint8List();
    _google = results[5].buffer.asUint8List();
  }

  static Uint8List get regularFont => _regularFont!;
  static Uint8List get boldFont => _boldFont!;
  static Uint8List get brandFont => _brandFont!;
  static Uint8List get logo => _logo!;
  static Uint8List get solidFont => _solidFont!;
  static Uint8List get google => _google!;
}
