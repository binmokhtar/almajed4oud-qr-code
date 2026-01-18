import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pdf/widgets.dart';
import 'package:qr_code/helpers/input_validation.dart';
import 'package:qr_code/helpers/models.dart';
import 'package:qr_code/helpers/pdf_assets_loader.dart';
import 'package:qr_code/helpers/pdf_generator.dart';
import 'package:qr_code/helpers/pdf_task_model.dart';
import 'package:qr_code/helpers/web_downloader.dart';

part 'qr_code_event.dart';
part 'qr_code_state.dart';
part 'qr_code_bloc.freezed.dart';

@lazySingleton
class QRCodeBloc extends Bloc<QRCodeEvent, QRCodeState> {
  ///
  final TextEditingController urlController = .new();
  final TextEditingController branchNameController = .new();

  ///
  QRCodeBloc() : super(const QRCodeState.initial()) {
    ///
    on<LoadAssets>((event, emit) async {
      final url = urlController.text;
      final branchName = branchNameController.text;
      final error = validation(url, branchName);
      if (error != null) {
        emit(QRCodeState.error(error));
        return;
      }
      emit(const QRCodeState.generating('جاري تحميل البيانات'));
      await Future.delayed(const Duration(milliseconds: 500));
      await PdfAssetsLoader.loadOnce();
      add(const QRCodeEvent.writeContent());
    });

    ///
    on<WriteContent>((event, emit) async {
      emit(const QRCodeState.generating('جاري كتابة المحتوى'));
      await Future.delayed(const Duration(milliseconds: 500));
      try {
        final model = GenerateModel(
          branchName: branchNameController.text,
          url: urlController.text,
        );

        final task = PdfGenerationTask(
          model: model,
          regularFont: PdfAssetsLoader.regularFont,
          boldFont: PdfAssetsLoader.boldFont,
          brandFont: PdfAssetsLoader.brandFont,
          logo: PdfAssetsLoader.logo,
          solidFont: PdfAssetsLoader.solidFont,
          google: PdfAssetsLoader.google,
        );
        final pdf = generatePdf(task);
        add(QRCodeEvent.saveContent(pdf));
      } catch (e) {
        emit(const QRCodeState.error('حدث خطأ أثناء إنشاء الملف'));
      }
    });

    ///
    on<SaveContent>((event, emit) async {
      emit(const QRCodeState.generating('جاري حفظ المحتوى'));
      await Future.delayed(const Duration(milliseconds: 500));
      final bytes = await event.pdf.save();
      add(QRCodeEvent.downloadPdf(bytes));
    });

    ///
    on<DownloadPdf>((event, emit) async {
      emit(const QRCodeState.generating('جاري تحميل المحتوى'));
      final fileName = 'رمز الإستجابة السريعة لفرع ${branchNameController.text}.pdf';
      await Future.delayed(const Duration(milliseconds: 500));
      downloadPdf(event.bytes, fileName);
      urlController.clear();
      branchNameController.clear();
      emit(const QRCodeState.success('تم تحميل الملف بنجاح'));
    });
  }

  ///
  @disposeMethod
  @override
  Future<void> close() {
    urlController.dispose();
    branchNameController.dispose();
    return super.close();
  }
}

extension QRCodeBlocExt on BuildContext {
  QRCodeBloc get bloc => read<QRCodeBloc>();
}
