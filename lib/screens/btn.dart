import 'package:flutter/material.dart';
import 'package:qr_code/bloc/qr_code_bloc.dart';
import 'package:qr_code/helpers/extensions.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({super.key, required this.loading, required this.state});

  final bool loading;
  final QRCodeState state;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (loading) return;
        context.bloc.add(const QRCodeEvent.loadAssets());
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        padding: EdgeInsets.all(20.s),
        minimumSize: Size(.infinity, 55.s),
        shape: RoundedRectangleBorder(borderRadius: .circular(12.r)),
        textStyle: TextStyle(fontSize: 14.f, fontFamily: 'Alexandria', fontWeight: .bold),
      ),

      child: state.maybeMap(
        orElse: () => const Text('إنشاء وتحميل الرمز'),
        generating: (state) => Row(
          mainAxisSize: .min,
          spacing: 20.s,
          children: [
            SizedBox(
              width: 20.s,
              height: 20.s,
              child: CircularProgressIndicator(strokeWidth: 3.s, color: Colors.white),
            ),
            Text(state.message),
          ],
        ),
      ),
    );
  }
}
