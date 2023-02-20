import 'package:flutter/material.dart';
import 'package:inypay/utils/color_resource.dart';
import 'package:inypay/widgets/custom_text.dart';

import '../utils/image_resource.dart';
import '../utils/string_resource.dart';

class Textfield extends StatelessWidget {
  Textfield({
    super.key,
  });
  final TextEditingController _usernameController = TextEditingController();
  // final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colorresource.white,
            border: Border.all(
              color: Colorresource.color211B2D,
              width: 1,
            )),
        child: TextField(
          controller: _usernameController,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
              hintText: StringResource.mobile, border: InputBorder.none),
        ),
      ),
    );
  }
}

class Passwordfield extends StatelessWidget {
  Passwordfield({
    super.key,
  });
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colorresource.white,
            border: Border.all(
              color: Colorresource.color211B2D,
              width: 1,
            )),
        child: TextField(
          controller: _passwordController,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: StringResource.sing,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class Mobilefield extends StatelessWidget {
  Mobilefield({
    super.key,
  });
  final TextEditingController _usernameController = TextEditingController();
  // final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Container(
            width: 95,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colorresource.white,
                border: Border.all(
                  color: Colorresource.colorEFF5F8,
                  width: 1,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  Imageresource.countryImage,
                  width: 26,
                  height: 26,
                ),
                CustomText(
                  StringResource.code,
                  color: Colorresource.color211B2D,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 239,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colorresource.white,
                border: Border.all(
                  color: Colorresource.colorEFF5F8,
                  width: 1,
                )),
            child: TextField(
              controller: _usernameController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.start,
              decoration: const InputDecoration(
                  hintText: StringResource.mobile, border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Colorresource.color00ACE1,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
