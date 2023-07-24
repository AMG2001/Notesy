import 'package:flutter/material.dart';
import 'package:notesy/config/device_dimenssions.dart';
import 'package:notesy/config/global_widgets/global_widgets.dart';
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
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          GSizedBox(height: .05),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Create an account",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.w600),
                            ),
                          ),
                          GSizedBox(height: .015),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "take notes , reminders , set targets , collect resourves and secure privacy",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(.6)),
                              )),
                          GSizedBox(height: .04),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 2),
                              shape: RoundedRectangleBorder(
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
                                      width: DeviceDimensions.width * .016),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                        fontSize: 16,
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
                              side: BorderSide(width: 2),
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
                                      width: DeviceDimensions.width * .016),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "Continue with Twitter",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GSizedBox(height: .03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: DeviceDimensions.width * .2,
                                height: 2,
                                color: Colors.black,
                              ),
                              Text(
                                "OR",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: DeviceDimensions.width * .2,
                                height: 2,
                                color: Colors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    GSizedBox(height: .03),
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter first name',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black.withOpacity(.4)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: DeviceDimensions.width * .04,
                              ),
                              Expanded(
                                child: Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter last name',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black.withOpacity(.4)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GSizedBox(height: .03),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black.withOpacity(.4)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GSizedBox(height: .03),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black.withOpacity(.4)),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GSizedBox(height: .03),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.circle_outlined),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Yes , i understand and agree to the stanly Terms of Services",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          GSizedBox(height: .03),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              side: BorderSide(width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Create an account",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
