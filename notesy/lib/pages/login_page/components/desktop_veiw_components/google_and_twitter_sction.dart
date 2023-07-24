import 'package:flutter/material.dart';
import 'package:notesy/config/device_dimenssions.dart';
import 'package:notesy/config/global_widgets/global_widgets.dart';

class GoogleAndTwitterSection extends StatelessWidget {
  const GoogleAndTwitterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GSizedBox(height: .05),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Create an account",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
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
    );
  }
}
