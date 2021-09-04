import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class SlideShow extends StatelessWidget {
  final Color myPink = Colors.pink;
  final Color myWite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SizedBox(
        
          height: 170,
          width: double.infinity,
          child: new Carousel(
            images: [
              new ExactAssetImage("assets/images/d1.jpg"),
              new ExactAssetImage("assets/images/d2.jpg"),
              new ExactAssetImage("assets/images/d3.jpg"),
            ],
            dotSize: 4.0,
            dotSpacing: 15.0,
            dotColor: Colors.white,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.grey.withOpacity(0.0),
            borderRadius: false,
            moveIndicatorFromBottom: 0.0,
            noRadiusForIndicator: false,
          )),
    );
  }
}
