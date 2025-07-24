import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final double? wordSpacing;
  final VoidCallback? onClick;
  final double left;
  final double right;
  final double top;
  final double bottom;

  const CustomText({
    super.key,
    required this.text,
    this.size,
    this.fontWeight,
    this.color,
    this.wordSpacing,
    this.onClick,
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.bottom = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        right: right,
        top: top,
        bottom: bottom,
      ),
    child:Text(
      text ?? '',
      style: TextStyle(
        fontSize: size ?? 16,
        fontWeight: fontWeight ?? FontWeight.w500,
        wordSpacing: wordSpacing,
        color: color ?? Colors.grey,
      ),
     ),
    );
  }
}
