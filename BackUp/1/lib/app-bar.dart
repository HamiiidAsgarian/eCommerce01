import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  final Color myPink = Colors.pink;
  final Color myWite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 60,
        child: Container(
          color: myPink,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
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
