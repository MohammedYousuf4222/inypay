import 'package:flutter/material.dart';
import 'package:inypay/utils/color_resource.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../utils/image_resource.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar(this.data, {Key? key}) : super(key: key);
  String data;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          Text(
            data,
          ),

          // const _progressindicator()
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: _progressindicator(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// ignore: camel_case_types
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
