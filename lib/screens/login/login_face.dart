import 'package:flutter/material.dart';
import 'package:inypay/screens/home/home_controller.dart';
import 'package:inypay/utils/string_resource.dart';
import 'package:inypay/widgets/custom_text.dart';
import 'package:inypay/widgets/login_stack.dart';

import '../../utils/color_resource.dart';
import '../../utils/image_resource.dart';

class LoginFace extends StatefulWidget {
  const LoginFace({super.key});

  @override
  State<LoginFace> createState() => _LoginFaceState();
}

class _LoginFaceState extends State<LoginFace> {
  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginStack(
        childWidget: Column(
          children: [
            const SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Imageresource.filterImage,
                    width: 36,
                    height: 36,
                  ),
                  Image.asset(
                    Imageresource.frameImage,
                    width: 36,
                    height: 36,
                  ),
                ],
              ),
            ),
            CustomText(
              StringResource.welcome,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 66,
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                      colors: [
                        Colorresource.color00ACE1,
                        Colorresource.color06E305,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      transform: GradientRotation(118.31))),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        StringResource.advance,
                        fontWeight: FontWeight.w600,
                      ),
                      Image.asset(
                        Imageresource.navigateImage,
                        width: 10,
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 320),
              width: double.infinity,
              height: 232,
              color: Colorresource.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 48),
                child: Column(
                  children: [
                    CustomText(
                      StringResource.faceId,
                      color: Colorresource.color211B2D,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Image.asset(
                      Imageresource.faceId,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
