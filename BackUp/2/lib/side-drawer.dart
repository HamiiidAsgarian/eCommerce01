import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final double myDrawerItemsSize = 50;
  @override
  Widget build(BuildContext context) {
    return (Theme(
        data: Theme.of(context).copyWith(
            // Set the transparency here
            canvasColor: Colors.white
            // .transparent, //or any other color you want. e.g Colors.blue.withOpacity(0.5)
            ),
        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the Drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            // padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 90,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 35,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 1.3, color: Colors.white)),
                        child: RawMaterialButton(
                            onPressed: () {
                              print("rigester");
                            },
                            // fillColor: Colors.red,
                            child: Text(
                              "ورود و ثبت نام",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            )),
                      ),
                      Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 38,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  //////////////////////////////////////////////////////
                  SizedBox(
                    width: double.infinity,
                    height: myDrawerItemsSize,
                    child: RawMaterialButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'خانه',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.home,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  ////////////////////////////////////////////////////
                  SizedBox(
                    width: double.infinity,
                    height: myDrawerItemsSize,
                    child: RawMaterialButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'لیست دسته بندی محصولات',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  /////////////////////////////////////////////////////////////////////////
                  Divider(
                    height: 1,
                  ),
                  ///////////////////////////////////////////////////////
                  SizedBox(
                      height: myDrawerItemsSize,
                      child: RawMaterialButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // padding: EdgeInsets.all(5),
                                width: 25,
                                height: 25,
                                child: Center(
                                  child: Text("99",
                                      style: TextStyle(color: Colors.white)),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    shape: BoxShape.circle),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'سبد خرید',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.black54,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                  Divider(
                    height: 1,
                  ),
                  /////////////////////////////////////////////
                  SizedBox(
                    width: double.infinity,
                    height: myDrawerItemsSize,
                    child: RawMaterialButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'پربازدیدترین ها',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  //////////////////////////////////////////////////
                  SizedBox(
                    width: double.infinity,
                    height: myDrawerItemsSize,
                    child: RawMaterialButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'پیشنهاد ویژه',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  /////////////////////////////////////////////////////////////////
                  SizedBox(
                    width: double.infinity,
                    height: myDrawerItemsSize,
                    child: RawMaterialButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'پرفروش ترینها',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  ////////////////////////////////////////////////////////
                  Divider(
                    height: 1,
                  ),
                  ///////////////////////////////////////////////////////////
                  SizedBox(
                    width: double.infinity,
                    height: myDrawerItemsSize,
                    child: RawMaterialButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'تنظیمات',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  ///////////////////////////////////////////////////////////////////
                  SizedBox(
                    width: double.infinity,
                    height: myDrawerItemsSize,
                    child: RawMaterialButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'درباره ما',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.info_outline,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  //////////////////////////////////////////////////////////////////
                  /// ///////////////////////////////////////////////////////////////////
                  SizedBox(
                    width: double.infinity,
                    height: myDrawerItemsSize,
                    child: RawMaterialButton(
                        onPressed: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'سوالات متداول',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.question_answer,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  //////////////////////////////////////////////////////////////////
                ],
              ),
            ],
          ),
        )));
  }
}
