import 'package:flutter/material.dart';

class RightImage extends StatelessWidget {
  late PageController pageController;
  RightImage({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
      ),
    );
  }
}
