import 'package:flutter/material.dart';

class DeviceSize {
  final double height;
  final double width;

  DeviceSize(BuildContext context)
      : height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;
}

sizeCalculator(var size, var ratio) {
  return size * (ratio / 100);
}
