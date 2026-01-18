import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:qr_code/helpers/models.dart';

pw.BarcodeWidget barcodeWidget(GenerateModel model) {
  return pw.BarcodeWidget(
    barcode: pw.Barcode.qrCode(errorCorrectLevel: pw.BarcodeQRCorrectionLevel.high),
    data: model.url,
    width: 200,
    height: 200,
    decoration: pw.BoxDecoration(
      border: pw.Border.all(color: PdfColors.blue700),
      borderRadius: pw.BorderRadius.circular(12),
    ),
    padding: const pw.EdgeInsets.all(12),
  );
}
