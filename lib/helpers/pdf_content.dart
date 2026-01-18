import 'dart:typed_data';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_code/helpers/barcode_widget.dart';
import 'package:qr_code/helpers/models.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:qr_code/helpers/icons.dart';

pw.Widget pdfContent({
  required GenerateModel model,
  required Uint8List logo,
  required pw.Font brandFont,
  required pw.Font solidFont,
  required Uint8List google,
}) {
  return pw.Padding(
    padding: const pw.EdgeInsets.all(20),
    child: pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.center,
      children: [
        pw.Image(pw.MemoryImage(logo), height: 75),
        pw.SizedBox(height: 10),
        yourVisit(model),
        pw.SizedBox(height: 20),
        shareUs(),
        pw.SizedBox(height: 20),
        barcodeWidget(model),
        pw.SizedBox(height: 20),
        stars(solidFont, google, brandFont),
        pw.SizedBox(height: 20),
        followUs(),
        pw.SizedBox(height: 20),
        iconListGenerate(brandFont),
        pw.SizedBox(height: 10),
        almajedUsername(),
      ],
    ),
  );
}

pw.Widget stars(pw.Font solidFont, Uint8List google, pw.Font brandFont) {
  return pw.Row(
    mainAxisSize: pw.MainAxisSize.min,
    mainAxisAlignment: pw.MainAxisAlignment.center,
    children: [
      ...List.generate(5, (index) {
        return pw.Padding(
          padding: const pw.EdgeInsets.symmetric(horizontal: 1),
          child: icon(
            IconModel(icon: FontAwesomeIcons.star.codePoint, color: PdfColors.yellow700),
            solidFont,
          ),
        );
      }),
      pw.SizedBox(width: 5),
      pw.Image(pw.MemoryImage(google), height: 25),
    ],
  );
}

pw.Text almajedUsername() {
  return pw.Text(
    '@almajed4oud',
    style: const pw.TextStyle(fontSize: 12, color: PdfColors.blue800),
    textAlign: pw.TextAlign.center,
  );
}

pw.Text yourVisit(GenerateModel model) {
  return pw.Text(
    'شرفتنا بزيارة فرع ${model.branchName}',
    style: pw.TextStyle(
      fontSize: 16,
      fontWeight: pw.FontWeight.bold,
      color: PdfColors.grey800,
    ),
    textAlign: pw.TextAlign.center,
    maxLines: 2,
  );
}

pw.Text shareUs() {
  return pw.Text(
    'ولأنك غالي علينا, شاركنا تقييمك على قوقل ماب',
    style: pw.TextStyle(
      fontSize: 12,
      color: PdfColors.grey800,
      fontWeight: pw.FontWeight.bold,
    ),
    textAlign: pw.TextAlign.center,
  );
}

pw.Text followUs() {
  return pw.Text(
    'تابعنا على مواقع التواصل الإجتماعي',
    style: pw.TextStyle(
      fontSize: 12,
      color: PdfColors.grey800,
      fontWeight: pw.FontWeight.bold,
    ),
    textAlign: pw.TextAlign.center,
  );
}
