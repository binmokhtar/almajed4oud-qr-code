import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:qr_code/helpers/models.dart';

pw.Widget icon(IconModel model, pw.Font brandFont) {
  return pw.Text(
    String.fromCharCode(model.icon),
    style: pw.TextStyle(fontSize: 20, color: model.color, font: brandFont),
  );
}

List<IconModel> iconList = [
  IconModel(icon: FontAwesomeIcons.xTwitter.codePoint, color: PdfColors.grey700),
  IconModel(icon: FontAwesomeIcons.instagram.codePoint, color: PdfColors.red700),
  IconModel(icon: FontAwesomeIcons.facebook.codePoint, color: PdfColors.blue700),
  IconModel(icon: FontAwesomeIcons.linkedin.codePoint, color: PdfColors.blue700),
  IconModel(icon: FontAwesomeIcons.youtube.codePoint, color: PdfColors.red700),
  IconModel(icon: FontAwesomeIcons.tiktok.codePoint, color: PdfColors.grey700),
];

pw.Widget iconListGenerate(pw.Font brandFont) {
  return pw.Row(
    mainAxisAlignment: pw.MainAxisAlignment.center,
    children: iconList.map((iconData) {
      return pw.Padding(
        padding: const pw.EdgeInsets.symmetric(horizontal: 5),
        child: icon(iconData, brandFont),
      );
    }).toList(),
  );
}
