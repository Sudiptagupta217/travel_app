import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double? width;
  ResponsiveButton({Key? key,
  this.width,
    this.isResponsive=false,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      child: Row(
        children: [

        ],
      ),
    );
  }
}
