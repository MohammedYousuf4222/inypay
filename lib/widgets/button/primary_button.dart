import 'package:flutter/material.dart';

import 'package:inypay/utils/color_resource.dart';

import '../../utils/image_resource.dart';
import '../custom_text.dart';

class PrimaryButton extends StatefulWidget {
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
  // final Color marginColor;
  final bool isShadowrequired;
  final Gradient gradient;

  const PrimaryButton(this.buttonName, this.gradient,
      {super.key,
      required this.onClick,
      this.leftMargin = 25,
      this.rightMargin = 25,
      this.color = Colorresource.color06E305,
      this.fontWeight = FontWeight.w600,
      this.fontSize = 14,
      this.isMarginRequired = true,
      this.textColor = Colors.white,
      // this.marginColor = Colorresource.color211B2D,
      this.isShadowrequired = true});
  @override
  // ignore: library_private_types_in_public_api
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                widget.buttonName,
                color: widget.textColor,
                // font: Font.robotoMedium,
                fontSize: widget.fontSize,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                Imageresource.frontArrow,
                width: 16,
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Decoration _buildDecoration() {
    return BoxDecoration(
        gradient: widget.gradient,
        // ignore: avoid_redundant_argument_values
        border: widget.isMarginRequired
            // ignore: avoid_redundant_argument_values
            ? Border.all(
                width: 0,
                // color: widget.marginColor,
              )
            : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          if (widget.isMarginRequired && widget.isShadowrequired)
            const BoxShadow(
                // color: ColorResource.colorDEE0E2,
                // blurRadius: 20,
                // offset: Offset(0, 2),
                )
        ],
        // ignore: unnecessary_this
        color: this.widget.color);
  }
}
