import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    required this.text,
    required this.onTap,
    this.borderRadius,
    this.height,
    this.width,
    this.textStyle,
    this.onDoubleTap,
    this.splashColor,
  });
  final Color? backgroundColor;
  final String text;
  final VoidCallback onTap;
  final VoidCallback? onDoubleTap;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final Color? splashColor;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.backgroundColor,
      borderRadius: widget.borderRadius,
      child: InkWell(
        splashColor: widget.splashColor,
        onTap: widget.onTap,
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: Center(
            child: Text(
              widget.text,
              style: widget.textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
