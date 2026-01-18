import 'package:flutter/material.dart';
import 'package:qr_code/helpers/extensions.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.loading,
    required this.controller,
    required this.label,
    required this.hint,
    required this.icon,
    this.textInputAction = .next,
    this.validator,
  });

  final bool loading;
  final TextEditingController controller;
  final String label, hint;
  final IconData icon;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(color: Colors.grey.shade400, width: 0.5.s),
    );
    final textStyle = TextStyle(fontSize: 13.f, color: Colors.grey.shade400);
    return TextFormField(
      enabled: !loading,
      textInputAction: textInputAction,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
        labelStyle: textStyle,
        floatingLabelStyle: textStyle.copyWith(fontSize: 15.f),
        hintStyle: textStyle,
        prefixIcon: Icon(icon, color: Colors.grey.shade400, size: 22.i),
        contentPadding: .all(16.s),
      ),
      cursorColor: Colors.cyan,
      cursorOpacityAnimates: true,
      cursorWidth: 2.s,
      validator: validator,
    );
  }
}
