import 'package:flutter/material.dart';
import 'package:notesy/config/device_dimenssions.dart';

class LoginPageHeader extends StatelessWidget {
  const LoginPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/write_icon.png',
            width: DeviceDimensions.width * .025),
        SizedBox(
          width: 8,
        ),
        Text(
          "Notesy",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
