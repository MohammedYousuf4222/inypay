import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils/color_resource.dart';
import '../../utils/image_resource.dart';
import '../../utils/string_resource.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/textfield.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();
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
          children: [
            Image.asset(
              Imageresource.backArrow,
              width: 36,
              height: 36,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomText(StringResource.otp),
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
              StringResource.digit,
              color: Colorresource.color211B2D,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpInput(_fieldOne, true),
                OtpInput(_fieldTwo, false),
                OtpInput(_fieldThree, false),
                OtpInput(_fieldFour, false),
                OtpInput(_fieldFive, false),
                OtpInput(_fieldSix, false),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Imageresource.timerImage,
                      width: 26,
                      height: 26,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CustomText(
                      StringResource.sec,
                      color: Colorresource.color211B2D,
                    ),
                  ],
                ),
                CustomText(
                  StringResource.resend,
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