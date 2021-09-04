// class A extends StatefulWidget {
//   @override
//   _As createState() => _As();
// }

// class _As extends State<A> {
//   TextEditingController textEditController = new TextEditingController();
//   String _index = "0";

//   void testingMethod() {
//     print(textEditController.text);
//   }

//   @override
//   Widget build(BuildContext context) {
//     print(_index);
//     testingMethod();
//     return Container(
//       height: 500,
//       color: Colors.blue,
//       child: Stack(children: [
//         Container(
//           // alignment: Alignment(0, 0),
//           alignment: Alignment.center,
//           width: 200,
//           height: 50,
//           color: Colors.orange,
//           child: Center(
//             child: TextField(
//               cursorColor: Colors.red,
//               onChanged: (text) {
//                 print("First text field: $text");
//               },
//               controller: textEditController,
//               decoration: InputDecoration(
//                   border: InputBorder.none, hintText: 'Enter a search term'),
//             ),
//           ),
//         ),
//         Positioned(
//           top: 50,
//           child: Container(
//             alignment: Alignment(100, 0),
//             color: Colors.amber,
//             width: 200,
//             height: 200,
//             child: ListView(
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Text("data"),
//                     Text("data"),
//                     Text("data"),
//                     Text("data"),
//                     Text("data"),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ]),

//       // Text(_index),
//       //   Container(
//       //       // child: B(callback: (val) => setState(() => _focus.hasFocus = _index + "1"))),
//     );
//   }
// }

// //////////////////////////////////////////////////
// // typedef void StringCallback(String val);

// // class B extends StatelessWidget {
// //   final StringCallback callback;

// //   B({this.callback});

// //   @override
// //   Widget build(BuildContext context) {
// //     // print("B");
// //     return Column(children: <Widget>[
// //       new FlatButton(
// //         onPressed: () {
// //           callback("String from method 1");
// //         },
// //         child: new Text("Method 1"),
// //       ),
// //     ]);
// //   }
// // }
