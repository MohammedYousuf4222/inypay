import 'package:flutter/material.dart';
import 'package:inypay/utils/image_resource.dart';

class LoginStack extends StatelessWidget {
  const LoginStack({super.key, @required this.childWidget});
  // ignore: prefer_typing_uninitialized_variables
  final childWidget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Imageresource.pictureImage,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            child: childWidget,
          ),
        ),
      ],
    );
  }
}
