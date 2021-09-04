import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import './app-bar.dart';
import './side-drawer.dart';
// import './slide-show.dart';
// import './catagories.dart';
// import './Timer.dart';
// import './goodsList.dart';
// import "./banners.dart";
// import './mainGoodList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'MyIranYekan'),
      debugShowCheckedModeBanner: false, ////TEST BANNER CLEANER!
      home: Scaffold(
          endDrawer: MyDrawer(),
          body: Stack(
            children: <Widget>[
              ListView(
                padding: EdgeInsets.only(top: 80),
                children: <Widget>[
                  // Nanvigation(),
                  Items(),
                  // SlideShow(),
                  // Catagories(),
                  // Timerr(),
                  // Goods(),
                  // Banner1(),
                  // Banner2(),
                  // Banner3(),
                  // Banner4(),
                  // Banner5(),
                  // Banner6(),
                  // GoodsNormal().ar("محصولات پرفروش"),
                  // GoodsNormal().ar("جدیدترین محصولات"),
                  // GoodsNormal().ar("گوشی موبایل"),
                  // GoodsNormal().ar("ساعت هوشمند"),
                  // GoodsNormal().ar("کالای دیجیتال"),
                  // GoodsNormal().ar("کالاهای اساسی"),
                ],
              ),
              new Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Nav(),
              )
            ],
          )),
    );
  }
}

//////////////////////////////////////////////////////////
///
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

class Nanvigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // list a = cataData.expand((item) => {item["contry"]}).toList();
    var expandedCataList = cataData
        .expand((item) => {
              Container(
                  height: double.infinity,
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                  decoration: new BoxDecoration(
                      border: new Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                  )),
                  child: Center(
                      child: Text(
                    item,
                  )))
            })
        .toList();
    return Container(
      margin: EdgeInsets.only(top: 0),
      height: 50,
      color: Colors.pinkAccent,
      child: ListView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: expandedCataList)
        ],
      ),
    );
  }
}

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 20,
            width: 50,
            color: Colors.red,
          ),
        ),

        // Container(
        //   height: 500,
        //   color: Colors.green,
        //   child: ListView(
        //     children: <Widget>[
        //       Align(
        //         alignment: Alignment.centerRight,
        //         child: Text("widget"),
        //       ),
        //       Container(
        //         child: Row(
        //           children: <Widget>[],
        //         ),
        //       ),
        //       ListTile(
        //         title: new Text("kkkkk"),
        //       ),
        //       Center(
        //         heightFactor: 5,
        //         child: Text("data"),
        //       ),
        //       Center(
        //         heightFactor: 5,
        //         child: Text("data2"),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
