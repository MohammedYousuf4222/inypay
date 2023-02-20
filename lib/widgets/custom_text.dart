import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatefulWidget {
  CustomText(
    this.data, {
    super.key,
    this.color = Colors.white,
    this.fontSize = 16,
    this.fontWeight,
    this.fontStyle,
  });

  String data;
  Color? color;
  double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.data,
      style: TextStyle(
          fontSize: widget.fontSize,
          fontStyle: widget.fontStyle,
          fontWeight: widget.fontWeight,

          // fontWeight: FontWeight.w600,
          color: widget.color),
    );
  }
}
