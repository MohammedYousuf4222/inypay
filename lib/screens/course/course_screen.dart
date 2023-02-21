import 'package:flutter/material.dart';
import 'package:inypay/utils/color_resource.dart';
import 'package:inypay/utils/string_resource.dart';
import 'package:inypay/widgets/custom_apbar.dart';
import 'package:inypay/widgets/custom_text.dart';
import 'package:inypay/widgets/login_stack.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(StringResource.courseDetails),
      body: LoginsStack(
          childWidget: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(26, 190, 0, 0),
            child: Row(
              children: [
                CustomText(
                  StringResource.aircraft,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              color: Colorresource.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CustomText(
                              StringResource.$260,
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Colorresource.color6722EA,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              StringResource.$48,
                              color: Colorresource.color959595,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 46,
                        width: 148,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colorresource.colorinypay),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              StringResource.enroll,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colorresource.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  CustomText(
                    StringResource.paragraph,
                    color: Colorresource.color211B2D,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  divider(),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        StringResource.location,
                        color: Colorresource.color211B2D,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        StringResource.bendeer,
                        color: Colorresource.color211B2D,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  divider(),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        StringResource.course,
                        color: Colorresource.colorinyblue,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class divider extends StatelessWidget {
  const divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
      height: 2,
      color: Colorresource.color959595,
    );
  }
}
