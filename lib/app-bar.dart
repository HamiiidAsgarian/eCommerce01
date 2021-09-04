import 'package:digi/bloc/events.dart';
import 'package:flutter/material.dart';

import 'bloc/bloc.dart';

class Nav extends StatelessWidget {
  final Color myPink = Colors.pink;
  final Color myWite = Colors.white;
  ////////////////////////////////////////////
  final _bloc = CounterBloc();

  ///

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _bloc.counter,
      initialData: 0,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return Container(
          child: Container(
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
                              _bloc.counterEventSink.add(Increment());
                              print("search");
                            },
                            child: Icon(
                              Icons.shopping_cart,
                              color: myWite,
                            ),
                          ),
                        ),
                        Text(snapshot.data.toString()),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: RawMaterialButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(50.0)),
                            // fillColor: myPink,
                            highlightColor: Colors.yellow,
                            onPressed: () {
                              _bloc.counterEventSink.add(Decrement());
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
          ),
        );
      },
    );
  }

  // @override
  void dispose() {
    // super.dispose();
    _bloc.dispose();
  }
}
