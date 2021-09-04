import 'package:flutter/material.dart';

class Banner1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7, bottom: 7),
      height: 150,
      width: double.infinity,
      color: Colors.grey[200],
      child: GestureDetector(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Banner"),
          ));
        },
        child: Image.asset(
          "assets/images/7s.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////
class Banner2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
      height: 150,
      width: double.infinity,
      // color: Colors.grey[200],
      child: GestureDetector(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Banner"),
          ));
        },
        child: Material(
          elevation: 2,
          color: Colors.white.withOpacity(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2.0),
            child: Image.asset(
              "assets/images/6s.jpg",
              fit: BoxFit.fill,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}

/////////////////////////////////////////////////
class Banner3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 3, bottom: 3),
        height: 135,
        width: double.infinity,
        color: Colors.grey[200],
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 2.5, 0),
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Banner"),
                  ));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.0),
                  child: Image.asset(
                    "assets/images/5s.jpg",
                    fit: BoxFit.fill,
                    height: double.infinity,
                  ),
                ),
              ),
            )),
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(2.5, 0, 5, 0),
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Banner"),
                  ));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.0),
                  child: Image.asset(
                    "assets/images/4s.jpg",
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                ),
              ),
            )),
          ],
        ));
  }
}

////////////////////////////////////////////
class Banner4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
      height: 150,
      width: double.infinity,
      // color: Colors.grey[200],
      child: GestureDetector(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Banner"),
          ));
        },
        child: Material(
          elevation: 2,
          color: Colors.white.withOpacity(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2.0),
            child: Image.asset(
              "assets/images/10s.jpg",
              fit: BoxFit.fitHeight,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////
class Banner5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 3, bottom: 3),
        height: 135,
        width: double.infinity,
        color: Colors.grey[200],
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 2.5, 0),
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Banner"),
                  ));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.0),
                  child: Image.asset(
                    "assets/images/2s.jpg",
                    fit: BoxFit.fill,
                    height: double.infinity,
                  ),
                ),
              ),
            )),
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(2.5, 0, 5, 0),
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Banner"),
                  ));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.0),
                  child: Image.asset(
                    "assets/images/3s.jpg",
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                ),
              ),
            )),
          ],
        ));
  }
}

////////////////////////////////////////////
class Banner6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7, bottom: 7),
      height: 150,
      width: double.infinity,
      color: Colors.grey[200],
      child: GestureDetector(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Banner"),
          ));
        },
        child: Image.asset(
          "assets/images/11s.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
