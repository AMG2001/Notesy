import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notesy/config/device_dimenssions.dart';
import 'package:notesy/pages/login_page/views/desktop_view/login_page_desktop.dart';
import 'package:notesy/pages/login_page/views/mobile_view/login_page_mobile_view.dart';
import 'package:notesy/pages/login_page/views/tablet_view/login_page_tablet_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const Notesy());
}

class Notesy extends StatelessWidget {
  const Notesy({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light().copyWith(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.deepPurple,
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.deepPurple, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.black, width: 2)),
          outlineBorder: BorderSide(color: Colors.deepPurple),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      title: 'Notesy',
      home: ResponsiveBuilder(builder: (context, sizingInformation) {
        DeviceDimensions.initializeDeviceDimenssions();
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return LoginPageDesktopView();
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.tablet) {
          return LoginPageTabletView();
        } else {
          return LoginPageMobileView();
        }
      }),
    );
  }
}
