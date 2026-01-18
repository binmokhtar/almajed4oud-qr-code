import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:qr_code/helpers/pdf_content.dart';
import 'package:qr_code/helpers/pdf_task_model.dart';

pw.Document generatePdf(PdfGenerationTask task) {
  final regularFont = pw.Font.ttf(task.regularFont.buffer.asByteData());
  final boldFont = pw.Font.ttf(task.boldFont.buffer.asByteData());
  final brandFont = pw.Font.ttf(task.brandFont.buffer.asByteData());
  final solidFont = pw.Font.ttf(task.solidFont.buffer.asByteData());
  final pdf = pw.Document(compress: false);
  pdf.addPage(
    pw.Page(
      pageTheme: pw.PageTheme(
        pageFormat: PdfPageFormat.a5,
        theme: pw.ThemeData.withFont(base: regularFont, bold: boldFont),
        textDirection: pw.TextDirection.rtl,
        margin: pw.EdgeInsets.zero,
        buildBackground: (pw.Context context) {
          return pw.FullPage(
            ignoreMargins: true,
            child: pw.Container(color: PdfColor.fromHex('#f0f7f9')),
          );
        },
      ),
      build: (_) => pdfContent(
        model: task.model,
        logo: task.logo,
        brandFont: brandFont,
        solidFont: solidFont,
        google: task.google,
      ),
    ),
  );
  return pdf;
}
