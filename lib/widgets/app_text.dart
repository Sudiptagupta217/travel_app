import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final Color color;
  final String text;

  AppText({Key? key,
    required this.text,
    this.color=Colors.black54,
    this.size=16
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
      ),

    );
  }
}
