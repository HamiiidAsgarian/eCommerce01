import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import './app-bar.dart';
// import './side-drawer.dart';
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
          // endDrawer: MyDrawer(),
          body: Stack(
        children: <Widget>[
          ListView(
            padding: EdgeInsets.only(top: 80),
            children: <Widget>[
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
              AA(),
            ],
          ),
          new Positioned(
            top: 0,
            left: 0,
            right: 0,
            // child: Nav(),
            child: Text("aaa"),
          )
        ],
      )),
    );
  }
}

//////////////////////////////////////////////////////////

class AA extends StatefulWidget {
  @override
  A createState() => A();
}

class A extends State<AA> {
  bool visibility = false;
  var foc = "";
  FocusNode _focusNode = new FocusNode();
  FocusNode _focus = new FocusNode();
  FocusNode _focus2 = new FocusNode();

  List contries = [
    {'contry': "iran", 'city': "tehran"},
    {'contry': "iran", 'city': "ahvaz"},
    {'contry': "iran", 'city': "shiraz"},
    {'contry': "ityly", 'city': "hran"},
    {'contry': "ityly", 'city': "vaz"},
    {'contry': "ityly", 'city': "sraz"},
    {'contry': "iraq", 'city': "an"},
    {'contry': "iraq", 'city': "vz"},
    {'contry': "iraq", 'city': "az"}
  ];
  String input1Text = "";
  String selectedCountry = "";
  var textController = new TextEditingController();
  ////////////////////////////////////////////////////////
  bool visibility2 = false;
  var foc2 = "";

  ///
  String input1Text2 = "";
  String selectedCountry2 = "";
  var textController2 = new TextEditingController();
  // @override
  // void dispose() {
  //   super.dispose();
  //   _focusNode.dispose();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _focusNode.addListener(() {
  //     print("Has focus: ${_focusNode.hasFocus}");
  //   });
  // }
  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
    _focus2.addListener(_onFocusChange2);
  }

  void _onFocusChange() {
    // debugPrint("Focus: " + _focus.hasFocus.toString());
    // setState(() => {foc = "foc1"});
  }

  void _onFocusChange2() {
    debugPrint("Focus: " + _focus.hasFocus.toString());
    // setState(() => {foc = "foc2"});
  }

  @override
  Widget build(BuildContext context) {
    List listedContries = contries.expand((item) => {item["contry"]}).toList();
    // var aaa = test.forEach((f)=>{ return f});
    List singledContries = listedContries.toSet().toList();
    ///////////////////////////////////////////////
    var listedContries2 =
        singledContries.where((item) => item.startsWith(input1Text)).toList();

///////////////////////////////////////////////
    List mapedListItems = listedContries2
        .expand(((f) => {
              ListTile(
                onTap: () => {
                      visibility = false,
                      setState(() => {
                            input1Text = f,
                            selectedCountry = f,
                            selectedCountry2 = "",
                            input1Text2 = ""
                          }),
                      // ,controller: TextEditingController(text: input1Text),
                      print(selectedCountry),
                    },
                leading: Icon(Icons.phone),
                title: Text(f),
              )
            }))
        .toList();
/////////////////////////////////////////////////////////////////////////////////
    List listedCitiesObj =
        contries.where((item) => item["contry"] == selectedCountry).toList();

    List listedCities = listedCitiesObj.expand((f) => {f["city"]}).toList();

    var listedCites2 =
        listedCities.where((item) => item.startsWith(input1Text2)).toList();

    List mapedListItemsS = listedCites2
        .expand(((f) => {
              ListTile(
                onTap: () => {
                      visibility2 = false,
                      setState(() => {input1Text2 = f, selectedCountry2 = f}),
                      // ,controller: TextEditingController(text: input1Text),
                      print(selectedCountry),
                    },
                leading: Icon(Icons.phone),
                title: Text(f),
              )
            }))
        .toList();
    /////////////////////////////////////////////////////////////////////////////
    print(listedCities);
    return Container(
        height: 500,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            // Text(this.foc.toString()),
            Text("$selectedCountry  $selectedCountry2"),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 150,
                height: 200,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      child: TextField(
                        controller: new TextEditingController.fromValue(
                            new TextEditingValue(
                                text: input1Text,
                                selection: new TextSelection.collapsed(
                                    offset: input1Text.length))),
                        focusNode: _focus2,
                        onChanged: (text) {
                          if (listedContries2.length == 0) {
                            setState(() {
                              visibility = false;
                            });
                          } else {
                            setState(() {
                              visibility = true;
                            });
                          }

                          //   textController..text = input1Text
                          // ..selection = TextSelection.collapsed(offset: 6);
                          setState(() =>
                              {input1Text = text, textController.text = text});
                          // print(this.input1Text);
                        },
                        onTap: () => {
                              setState(() => {
                                    foc = "foc1",
                                    visibility = true,
                                  }),
                            },
                      ),
                    ),
                    Visibility(
                      visible: visibility,
                      child: Container(
                        constraints:
                            BoxConstraints(minHeight: 50, maxHeight: 140),
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.all(0),
                        width: 150,
                        // height: 140,
                        color: Colors.pink,
                        child: ListView(
                          children: mapedListItems,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 150,
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        color: Colors.blue,
                        child: TextField(
                          controller: new TextEditingController.fromValue(
                              new TextEditingValue(
                                  text: input1Text2,
                                  selection: new TextSelection.collapsed(
                                      offset: input1Text2.length))),
                          focusNode: _focus2,
                          onChanged: (text) {
                            if (listedCites2.length == 0) {
                              setState(() {
                                visibility2 = false;
                              });
                            } else {
                              setState(() {
                                visibility2 = true;
                              });
                            }

                            //   textController..text = input1Text
                            // ..selection = TextSelection.collapsed(offset: 6);
                            setState(() => {
                                  input1Text2 = text,
                                  textController2.text = text
                                });
                            // print(this.input1Text);
                          },
                          onTap: () => {
                                setState(() => {
                                      foc = "foc1",
                                      visibility2 = true,
                                    }),
                              },
                        ),
                      ),
                      Visibility(
                        visible: visibility2,
                        child: Container(
                          constraints:
                              BoxConstraints(minHeight: 50, maxHeight: 140),
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.all(0),
                          width: 150,
                          // height: 140,
                          color: Colors.blueGrey,
                          child: ListView(
                            children: mapedListItemsS,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )

            ////////////////////////////////  pop
            //  WillPopScope(
            //   child: Text(''),
            //   onWillPop: () {
            //     print("pop");
            //     visibility = false;
            //   },
            // ),
            ///////////////////////////////////////////

            // Align(
            //     alignment: Alignment(0, -0.8),
            // top: 10,
            // right: 10,
            // child: ),
          ],
        ));
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
