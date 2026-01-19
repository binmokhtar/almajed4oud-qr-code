import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code/bloc/qr_code_bloc.dart';
import 'package:qr_code/helpers/extensions.dart';
import 'package:qr_code/screens/btn.dart';
import 'package:qr_code/screens/text_field.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double topPadding = MediaQuery.of(context).padding.top;
    final double availableHeight = screenHeight - topPadding;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        final focus = FocusManager.instance.primaryFocus;
        if (focus != null && focus.hasFocus) {
          focus.unfocus();
          SystemChannels.textInput.invokeMethod('TextInput.hide');
          return;
        }
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop(result);
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: BlocBuilder<QRCodeBloc, QRCodeState>(
            builder: (context, state) {
              final loading = state.isLoading;
              final bloc = context.bloc;

              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                },
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: availableHeight,
                        maxWidth: context.adaptive(
                          mobile: double.infinity,
                          tablet: 450.s,
                          desktop: 500.s,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.s),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/logo/almajed2.png',
                              width: 150.i,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.store),
                            ),
                            SizedBox(height: 10.s),
                            const _GreetingWidget(),
                            SizedBox(height: 20.s),
                            _buildMessage(state),
                            CustomTextForm(
                              loading: loading,
                              controller: bloc.urlController,
                              label: 'عنوان الفرع (Google Maps)',
                              hint: 'https://maps.google.com/...',
                              icon: Icons.location_on_rounded,
                              textInputAction: TextInputAction.next,
                            ),
                            SizedBox(height: 20.s),
                            CustomTextForm(
                              loading: loading,
                              controller: bloc.branchNameController,
                              label: 'إسم الفرع',
                              hint: 'السلام مول',
                              icon: Icons.store_rounded,
                              textInputAction: TextInputAction.done,
                            ),
                            SizedBox(height: 30.s),
                            SubmitBtn(loading: loading, state: state),
                            SizedBox(
                              height: MediaQuery.of(context).viewInsets.bottom > 0
                                  ? 100.s
                                  : 20.s,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildMessage(QRCodeState state) {
    return state.maybeMap(
      orElse: () => const SizedBox.shrink(),
      error: (e) => _StatusMessage(message: e.error, isError: true),
      success: (s) => _StatusMessage(message: s.message, isError: false),
    );
  }
}

class _GreetingWidget extends StatelessWidget {
  const _GreetingWidget();

  @override
  Widget build(BuildContext context) {
    return Text(
      'حياك الله يا غالي، كرمًا زودنا ببيانات فرعك عشان نجهز لك رمز التقييم الخاص بك',
      style: TextStyle(
        fontSize: 16.f,
        color: Colors.blueGrey.shade400,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class _StatusMessage extends StatelessWidget {
  final String message;
  final bool isError;

  const _StatusMessage({required this.message, required this.isError});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.s),
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20.s),
      decoration: BoxDecoration(
        color: isError ? Colors.red.withAlpha(20) : Colors.green.withAlpha(20),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: isError ? Colors.red.shade200 : Colors.green.shade200),
      ),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 14.f,
          color: isError ? Colors.red.shade700 : Colors.green.shade700,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
