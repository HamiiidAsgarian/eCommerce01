import 'package:flutter/material.dart';

import '../screens/catagoriesScreen.dart';

class Btn extends StatelessWidget {
  // String title = "";

  Widget btnFunction(String a, context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: SizedBox(
        height: 35,
        child: RawMaterialButton(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            fillColor: Colors.lightGreen,
            highlightColor: Colors.orange,
            splashColor: Colors.pink,
            // color: Colors.green,
            // padding: EdgeInsets.only(left: 0, right: 0),
            child: new Container(
              child: Text(
                a,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "MyIranYekan"),
              ),
            ),
            onPressed: () {
              // Scaffold.of(context).showSnackBar(SnackBar(
              //   content: Text(a),
              // ));
              navigate(context);
            },
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0))),
      ),
    );
  }

  navigate(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CataScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return null;
  }
}

// //////////////////////////////////
// import 'package:flutter/material.dart';

//  Btn () {
//   String title = "";

//     return Padding(
//       padding: EdgeInsets.only(left: 5, right: 5),
//       child: SizedBox(
//         height: 35,
//         child: RawMaterialButton(
//             padding: EdgeInsets.only(
//               left: 10,
//               right: 10,
//             ),
//             fillColor: Colors.lightGreen,
//             highlightColor: Colors.orange,
//             splashColor: Colors.pink,
//             // color: Colors.green,
//             // padding: EdgeInsets.only(left: 0, right: 0),
//             child: new Container(
//               child: Text(
//                 title,
//                 style: TextStyle(color: Colors.white, fontSize: 15),
//               ),
//             ),
//             onPressed: () {
//               Scaffold.of(context).showSnackBar(SnackBar(
//                 content: Text(title),
//               ));
//             },
//             shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(30.0))),
//       ),
//     );
//   }
