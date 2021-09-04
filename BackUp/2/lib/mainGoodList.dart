import 'package:flutter/material.dart';

class GoodsNormal extends StatelessWidget {
  final test = [
    {
      "title": "کیف زنانه  ",
      "mainPrice": 8800,
      "off": 600,
      "image": "https://picsum.photos/200/300"
    },
    {
      "title": "کیف چرمی-اصل ویتنام",
      "mainPrice": 3800,
      "off": 2600,
      "image":
          "https://images-na.ssl-images-amazon.com/images/I/41l6VFfhYAL.jpg"
    },
    {
      "title": "کفش نایک  مدل b85",
      "mainPrice": 9800,
      "off": 1600,
      "image":
          "https://cdn1.salewa.com/media/image/89/11/a1/52403bb1-4859-44be-9382-817a2eb43843_salewa_300x300.jpg"
    },
    {
      "title": " ژاکت مردانه- چرم",
      "mainPrice": 4800,
      "off": 7600,
      "image":
          "https://dnkbrands.com/wp-content/uploads/2018/06/Mountainskin-Leather-Jacket-Men-Coats-5XL-Brand-High-Quality-PU-Outerwear-Men-Business-Winter-Faux-Fur-1.jpg_640x640-1-300x300.jpg"
    },
     {
      "title": "کیف زنانه  ",
      "mainPrice": 8800,
      "off": 600,
      "image": "https://picsum.photos/200/300"
    },
    {
      "title": "کیف چرمی-اصل ویتنام",
      "mainPrice": 3800,
      "off": 2600,
      "image":
          "https://images-na.ssl-images-amazon.com/images/I/41l6VFfhYAL.jpg"
    },
    {
      "title": "کفش نایک  مدل b85",
      "mainPrice": 9800,
      "off": 1600,
      "image":
          "https://cdn1.salewa.com/media/image/89/11/a1/52403bb1-4859-44be-9382-817a2eb43843_salewa_300x300.jpg"
    },
    {
      "title": " ژاکت مردانه- چرم",
      "mainPrice": 4800,
      "off": 7600,
      "image":
          "https://dnkbrands.com/wp-content/uploads/2018/06/Mountainskin-Leather-Jacket-Men-Coats-5XL-Brand-High-Quality-PU-Outerwear-Men-Business-Winter-Faux-Fur-1.jpg_640x640-1-300x300.jpg"
    },
  ];
  ar(title) {
    zr(i) {
      if (i["image"] == null) {
        i["image"] = "http://www.biolink.org.cn/chinabio/images/loading.gif";
      }
      // return Card(color: (i["color"]), child: Text(i["b"]));
      return Padding(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          child: Container(
            decoration: new BoxDecoration(
              border: new Border.all(color: Colors.black12),
            ),
            // color: Colors.yellow,
            child: Container(
                color: Colors.white,
                width: 150,
                height: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 150,
                      child: Container(
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.network(
                            i["image"],
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        )),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Text(
                          i["title"],
                          textDirection: TextDirection.rtl,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            height: 0.9,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.black26,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.all(0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(),
                                Text(
                                  i["mainPrice"].toString() + "  تومان ",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      height: 0.9, color: Colors.green),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                )),
          ));
    }

    var a = test.map((item) => zr(item)).toList();
///////////////////////////////////////////////////////////

    return Container(
        height: 260,
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$title",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                  InkWell(
                    child: Text(
                      "لیست کامل",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w100,
                          color: Colors.blue),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                reverse: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: a,
                  ),
                ],
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return null;
  }
}
