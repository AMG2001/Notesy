import 'package:flutter/material.dart';
import 'package:notesy/config/device_dimenssions.dart';
import 'package:notesy/config/global_widgets/global_widgets.dart';

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
                    Row(
                      children: [
                        Image.asset('assets/images/write_icon.png',
                            width: DeviceDimensions.width * .025),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Notesy",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: DeviceDimensions.height * .04,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Create an account",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w700),
                      ),
                    ),
                    GSizedBox(height: .02),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Store and sync all your notes")),
                    GSizedBox(height: .04),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/google.png',
                                width: DeviceDimensions.width * .02),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    GSizedBox(height: .04),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/twitter.png',
                                width: DeviceDimensions.width * .02),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Continue with Twitter",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16),
              ),
            ),
          ),
          Expanded(
              child: Center(
            child: Container(
              color: Colors.white,
              child: PageView.builder(
                controller: pageController,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    child: Image.asset(
                      'assets/images/right_image.png',
                      fit: BoxFit.contain,
                    ),
                  );
                },
              ),
              padding: EdgeInsets.all(16),
            ),
          )),
        ],
      )),
    );
  }
}
