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
          body: Column(
            children: <Widget>[
              Nav(),
              Nanvigation(),
              Items(),
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
    var _controler = ScrollController();

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
                      child: InkWell(
                    child: Text(item),
                    onTap: () {
                      print(_controler.position);
                      print(_controler.offset);

                      // _controler.jumpTo(0.0);
                      _controler.animateTo(
                          _controler.position.maxScrollExtent / 2,
                          duration: Duration(milliseconds: 800),
                          curve: Curves.easeOut);
                    },
                  )))
            })
        .toList();
    return Container(
      margin: EdgeInsets.only(top: 0),
      height: 50,
      color: Colors.pinkAccent,
      child: ListView(
        controller: _controler,
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
    return Expanded(
        child: PageView(
      children: <Widget>[
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.cyan,
        ),
        Container(
          color: Colors.deepPurple,
        ),
      ],
    )

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
        );
  }
}
