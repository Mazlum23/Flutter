import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  String name;
  String image;
  String description;

  Detail({this.name, this.image, this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Detail Page"),
      ),
      body: Center(
          child: Container(
            margin: EdgeInsets.all(4),
            padding: EdgeInsets.all(4),
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                new Text(
                  name,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Open Sans',
                      fontSize: 40),
                ),
                new Image.asset(image),
                new Text(description,
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20))
              ],
            ),
      )),
    );
  }
}
