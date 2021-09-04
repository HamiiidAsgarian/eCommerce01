import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  final Color myPink = Colors.pink;
  final Color myWite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 80,
        child: Container(
          padding: EdgeInsets.only(top: 20),
          color: myPink,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    // padding: EdgeInsets.only(top: 20),
                    width: 50,
                    height: 50,
                    child: RawMaterialButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0)),
                      // fillColor: myPink,
                      highlightColor: Colors.yellow,
                      onPressed: () {
                        print("Cart");
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        color: myWite,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: RawMaterialButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0)),
                      // fillColor: myPink,
                      highlightColor: Colors.yellow,
                      onPressed: () {
                        print("Search");
                      },
                      child: Icon(
                        Icons.search,
                        color: myWite,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      "دسته بندی ها",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                          color: myWite),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: RawMaterialButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0)),
                      // fillColor: myPink,
                      highlightColor: Colors.yellow,
                      onPressed: () {
                        print("drawer");
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
