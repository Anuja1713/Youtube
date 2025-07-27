import 'package:flutter/material.dart';
import 'package:youtube/themes/app_color.dart';

class CustomContianer extends StatelessWidget {
  double height;
  double width;
  final Color Colorss;
  final String imageurl;
  final double myRadius;
  CustomContianer({
    super.key,
    this.height = 0,
    required this.width,
    this.Colorss = AppColor.primaryColor,
    required this.imageurl,
    this.myRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      height: height == null ? screenHeight * 0.5 : height,

      width: width,
      decoration: BoxDecoration(
        color: Colorss,
        borderRadius: BorderRadius.circular(myRadius),
        image: DecorationImage(
          image: NetworkImage(imageurl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
