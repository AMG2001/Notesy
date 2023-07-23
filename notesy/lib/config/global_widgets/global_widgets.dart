import 'package:flutter/material.dart';
import 'package:notesy/config/device_dimenssions.dart';

class GSizedBox extends StatelessWidget {
  GSizedBox({required this.height});
  late double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceDimensions.height * this.height,
    );
  }
}
