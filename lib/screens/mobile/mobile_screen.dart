// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:inypay/widgets/button/primary_button.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils/color_resource.dart';
import '../../utils/image_resource.dart';
import '../../utils/string_resource.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/textfield.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final TextEditingController _One = TextEditingController();
  final TextEditingController _Two = TextEditingController();
  final TextEditingController _Three = TextEditingController();
  final TextEditingController _Four = TextEditingController();
  final TextEditingController _Five = TextEditingController();
  final TextEditingController _Six = TextEditingController();
  // String? _otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
              colors: <Color>[
                Colorresource.color06E305,
                Colorresource.color00ACE1,
                Colorresource.color06E305,
              ],
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              Imageresource.backArrow,
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomText(StringResource.pins),
            // const _progressindicator()
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: _progressindicator(),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              StringResource.pin,
              color: Colorresource.color211B2D,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpInput(_One, true),
                OtpInput(_Two, false),
                OtpInput(_Three, false),
                OtpInput(_Four, false),
                OtpInput(_Five, false),
                OtpInput(_Six, false),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            PrimaryButton(
                StringResource.login,
                const LinearGradient(
                    colors: [
                      Colorresource.color06E305,
                      Colorresource.color00ACE1,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    transform: GradientRotation(118.31)),
                onClick: () {}),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  StringResource.forgot,
                  color: Colorresource.color00ACE1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _progressindicator extends StatelessWidget {
  const _progressindicator();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: CircularPercentIndicator(
          radius: 10,
          lineWidth: 3.0,
          animation: true,
          percent: 40 / 100,
          backgroundColor: Colors.black12,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Colorresource.white,
        ));
  }
}
 // ElevatedButton(
            //     onPressed: () {
            //       setState(() {
            //         _otp = _fieldOne.text +
            //             _fieldTwo.text +
            //             _fieldThree.text +
            //             _fieldFour.text;
            //       });
            //     },
            //     child: const Text('Submit')),
            // const SizedBox(
            //   height: 30,
            // ),
            // // Display the entered OTP code
            // Text(
            //   _otp ?? 'Please enter OTP',
            //   style: const TextStyle(fontSize: 30),
            // )