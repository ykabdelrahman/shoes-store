import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.hint,
    this.lableText,
    this.iconn,
    this.textType,
    this.hideText = false,
    this.onChanged,
    this.controller,
    this.validator,
    // this.decoration,
    this.textStyle,
  });
  final String? hint;
  final String? lableText;
  final IconData? iconn;
  final TextInputType? textType;
  final bool? hideText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  // final InputDecoration? decoration;
  final TextStyle? textStyle;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.textType,
      obscureText: widget.hideText!,
      style: widget.textStyle,
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.iconn,
          color: kPrimaryColor,
        ),
        labelText: widget.lableText,
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 12.sp,
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(
          fontSize: 12.sp,
          color: Colors.grey,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
