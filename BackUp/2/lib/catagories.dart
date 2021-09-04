import 'package:flutter/material.dart';
import './buttons/btn.dart';

class Catagories extends StatelessWidget {
  final cataData = [
    "ورزش و سفر",
    "اسباب بازی و کودک و نوزاد",
    "کتاب، لوازم التحریر و هنر",
    "خانه و آشپزخانه",
    "خودرو ابزار و اداری",
    "آرایشی،بهداشتی و سلامت",
    "کالای دیجیتال",
    "مد و پوشاک"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        width: double.infinity,
        height: 60,
        child: Container(
          // color: Colors.red,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            reverse: true, //////////reverse list view right to left
            itemCount: cataData.length,
            itemBuilder: (context, int index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Btn().btnFunction(cataData[index], context),
                ],
              );
            },
          ),
        ));
  }
}
