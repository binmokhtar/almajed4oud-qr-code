import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code/bloc/qr_code_bloc.dart';
import 'package:qr_code/helpers/extensions.dart';
import 'package:qr_code/screens/btn.dart';
import 'package:qr_code/screens/text_field.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: BlocBuilder<QRCodeBloc, QRCodeState>(
          builder: (context, state) {
            final loading = state.isLoading;
            final bloc = context.bloc;

            return GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    // padding: EdgeInsets.symmetric(vertical: 20.s),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
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
                              Image.asset('assets/logo/almajed2.png', width: 150.i),
                              SizedBox(height: 10.s),
                              Text(
                                'حياك الله يا غالي، كرمًا زودنا ببيانات فرعك عشان نجهز لك رمز التقييم الخاص بك',
                                style: TextStyle(
                                  fontSize: 16.f,
                                  color: Colors.blueGrey.shade400,
                                ),
                                textAlign: TextAlign.center,
                              ),

                              SizedBox(height: 20.s),

                              state.maybeMap(
                                orElse: () => const SizedBox.shrink(),
                                error: (e) =>
                                    _StatusMessage(message: e.error, isError: true),
                                success: (s) =>
                                    _StatusMessage(message: s.message, isError: false),
                              ),

                              CustomTextForm(
                                loading: loading,
                                controller: bloc.urlController,
                                label: 'عنوان الفرع (Google Maps)',
                                hint: 'https://maps.google.com/...',
                                icon: Icons.location_on_rounded,
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
                              SizedBox(height: 20.s),

                              SubmitBtn(loading: loading, state: state),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
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
      padding: .all(14.s),
      margin: .only(bottom: 20.s),
      decoration: BoxDecoration(
        color: isError ? Colors.red.withAlpha(20) : Colors.green.withAlpha(20),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 14.f,
          color: isError ? Colors.red.shade700 : Colors.green.shade700,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
