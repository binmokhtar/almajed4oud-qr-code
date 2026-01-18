import 'package:pdf/pdf.dart';

class GenerateModel {
  final String url, branchName;

  GenerateModel({required this.url, required this.branchName});
}

class IconModel {
  final int icon;
  final PdfColor color;

  IconModel({required this.icon, required this.color});
}
