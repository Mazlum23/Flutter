import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  String name;
  String image;
  String description;

  Detail({this.name, this.image, this.description});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
                  this.widget.name,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Open Sans',
                      fontSize: 40),
                ),
                new Image.network(this.widget.image,width: 200,height: 200,),
                new Text(this.widget.description,
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
