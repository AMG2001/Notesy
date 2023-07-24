import 'package:flutter/material.dart';
import 'package:notesy/config/global_widgets/global_widgets.dart';
import 'package:notesy/pages/login_page/components/desktop_veiw_components/google_and_twitter_sction.dart';
import 'package:notesy/pages/login_page/components/desktop_veiw_components/input_fields_section.dart';
import 'package:notesy/pages/login_page/components/desktop_veiw_components/login_page_header.dart';
import 'package:notesy/pages/login_page/components/desktop_veiw_components/right_image.dart';

class LoginPageDesktopView extends StatelessWidget {
  LoginPageDesktopView({super.key});
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFAFA),
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            child: Center(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoginPageHeader(),
                    GoogleAndTwitterSection(),
                    GSizedBox(height: .03),
                    LoginInputFieldsSection()
                  ],
                ),
                padding: EdgeInsets.all(16),
              ),
            ),
          ),
          RightImage(pageController: pageController)
        ],
      )),
    );
  }
}
