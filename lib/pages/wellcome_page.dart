import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class WellComePage extends StatefulWidget {
  const WellComePage({super.key});

  @override
  State<WellComePage> createState() => _WellComePageState();
}

class _WellComePageState extends State<WellComePage> {
  List images =[
    'img1.jpeg',
    'img1.jpg',
    'img3.jpg',
  ];

  List text=[
    "Trips",
    "Slow Trip",
    "Elevation",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration:BoxDecoration(
            image:DecorationImage(
                image: AssetImage(
                    "img/"+images[index]
                   ),fit: BoxFit.cover
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top:90,left: 20,right: 20 ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: text[index]),
                        AppText(text: "Mountain",size: 30,),
                        SizedBox(height: 20,),
                        SizedBox(
                          width: 250,
                          child: AppText(
                              text:"A mountain is an elevated portion of the Earth's crust, generally with steep sides that show significant exposed bedrock.",
                            color: AppColor.buttonBgColor,
                            size: 14,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
