import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final Color color;
  final String text;

   AppLargeText({Key? key,
    required this.text,
     this.color=Colors.black,
     this.size=30
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
      style: TextStyle(
        color: color,
          fontSize: size,
        fontWeight: FontWeight.bold
      ),

    );
  }
}
