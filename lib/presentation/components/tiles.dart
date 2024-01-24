import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTiles extends StatelessWidget {
  const CustomTiles({super.key, required this.path, required this.onTap});
  // final Widget widget;

  final String path;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Image.asset(path,scale: 1.5,),
        ),
      ),
    );
  }
}