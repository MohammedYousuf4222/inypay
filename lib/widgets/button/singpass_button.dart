import 'package:flutter/material.dart';
import 'package:inypay/utils/color_resource.dart';

import '../../utils/image_resource.dart';

class SingpassButton extends StatefulWidget {
  const SingpassButton({
    super.key,
  });

  @override
  State<SingpassButton> createState() => _SingpassButtonState();
}

class _SingpassButtonState extends State<SingpassButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colorresource.white,
          border: Border.all(
            color: Colorresource.color211B2D,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Imageresource.singpassImage,
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
