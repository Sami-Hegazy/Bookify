import 'package:bookify/core/utils/colors.dart';
import 'package:bookify/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.borderRadius,
      this.height,
      this.width,
      required this.text,
      this.textStyle,
      required this.onPressed,
      this.backgroundColor,
      this.margin,
      this.textColor});

  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final String text;
  final TextStyle? textStyle;
  final void Function() onPressed;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? margin;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          fixedSize: Size(width ?? 250, height ?? 48),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: textStyle ??
              Styles.textStyle16.copyWith(
                color: textColor ?? MyColors.kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
