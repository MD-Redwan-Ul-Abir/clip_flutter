import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class clipPathCustom extends StatelessWidget {
  const clipPathCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127.h,
      width: 360.w,
      color: Colors.transparent,
      child: ClipPath(
        clipper: bottomClipCode(),
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}

class bottomClipCode extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path_0 = Path();
    path_0.moveTo(0, 92.1296);
    path_0.lineTo(0, 2);
    path_0.lineTo(0.575, 2);
    path_0.lineTo(414, 2);
    path_0.lineTo(414, 92.1296);
    path_0.lineTo(73.6, 159);
    path_0.lineTo(0, 92.1296);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
