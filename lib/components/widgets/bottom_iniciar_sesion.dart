import 'package:flutter/material.dart';

class BottomIniciarSesion extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Border? border;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  const BottomIniciarSesion({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.border,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border,
        borderRadius: borderRadius,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
