import 'package:flutter/material.dart';

import 'package:inypay/utils/color_resource.dart';

import '../custom_text.dart';

class SecondaryButton extends StatefulWidget {
  final String buttonName;
  final Function onClick;
  // ignore: prefer_typing_uninitialized_variables
  final double leftMargin;
  // ignore: type_annotate_public_apis
  final double rightMargin;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final bool isMarginRequired;
  final Color textColor;
  final Color marginColor;
  final bool isShadowrequired;

  const SecondaryButton(
    this.buttonName, {
    super.key,
    required this.onClick,
    this.leftMargin = 25,
    this.rightMargin = 25,
    this.color = Colorresource.white,
    this.fontWeight = FontWeight.w700,
    this.fontSize = 14,
    this.isMarginRequired = true,
    this.textColor = Colorresource.color211B2D,
    this.marginColor = Colorresource.color211B2D,
    this.isShadowrequired = true,
  });
  @override
  // ignore: library_private_types_in_public_api
  _SecondaryButtonState createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: _buildDecoration(),
        child: InkWell(
          onTap: () {
            // AppUtils.hideKeyBoard(context);
            widget.onClick();
          },
          child: Center(
            child: CustomText(
              widget.buttonName,
              color: widget.textColor,
              // font: Font.robotoMedium,
              fontSize: widget.fontSize,
            ),
          ),
        ),
      ),
    );
  }

  Decoration _buildDecoration() {
    return BoxDecoration(
        // ignore: avoid_redundant_argument_values
        border: widget.isMarginRequired
            ? Border.all(width: 1, color: widget.marginColor)
            : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        boxShadow: [
          if (widget.isMarginRequired && widget.isShadowrequired)
            const BoxShadow(
                // color: Colorresource.color06E305,
                // blurRadius: 20,
                // offset: Offset(0, 2),
                )
        ],
        color: widget.color);
  }
}
