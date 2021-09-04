import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import '../app-bar.dart';
import '../side-drawer.dart';
import '../slide-show.dart';
import '../catagories.dart';
import '../Timer.dart';
import '../goodsList.dart';
import "../banners.dart";
import '../mainGoodList.dart';

class HomeScreen extends StatelessWidget {
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
                  // Items(),
                  SlideShow(),
                  Catagories(),
                  Timerr(),
                  Goods(),
                  Banner1(),
                  Banner2(),
                  Banner3(),
                  Banner4(),
                  Banner5(),
                  Banner6(),
                  GoodsNormal().ar("محصولات پرفروش"),
                  GoodsNormal().ar("جدیدترین محصولات"),
                  GoodsNormal().ar("گوشی موبایل"),
                  GoodsNormal().ar("ساعت هوشمند"),
                  GoodsNormal().ar("کالای دیجیتال"),
                  GoodsNormal().ar("کالاهای اساسی"),
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
