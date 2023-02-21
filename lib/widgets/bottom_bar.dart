import 'package:flutter/material.dart';
import 'package:inypay/screens/course/course_screen.dart';
import 'package:inypay/screens/login/landing.dart';
import 'package:inypay/screens/login/login_face.dart';
import 'package:inypay/screens/login/verification.dart';
import 'package:inypay/screens/mobile/mobile_screen.dart';
import 'package:inypay/screens/otp/otp_screen.dart';
import 'package:inypay/utils/color_resource.dart';
import 'package:inypay/utils/image_resource.dart';
import 'package:inypay/utils/string_resource.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colorresource.white,
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(Imageresource.homeImage),
                ),
                label: StringResource.home),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Imageresource.globalImage),
              ),
              label: StringResource.menu,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Imageresource.valletImage),
              ),
              label: StringResource.menu,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Imageresource.noteImage),
              ),
              label: StringResource.menu,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Imageresource.applicationImage),
              ),
              label: StringResource.more,
            ),
          ],
          backgroundColor: Colorresource.white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colorresource.color00ACE1,
          unselectedItemColor: Colorresource.color211B2D,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    CourseScreen(),
    Landing(),
    Verification(),
    OtpScreen(),
    MobileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
