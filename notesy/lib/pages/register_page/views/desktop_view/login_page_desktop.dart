import 'package:flutter/material.dart';

class LoginPageDesktopView extends StatelessWidget {
  const LoginPageDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Desktop View'),
        ),
      ),
    );
  }
}
