import 'package:flutter/material.dart';

class KitCard extends StatelessWidget{
  String name;
  String image;
  String description;

  KitCard({this.name, this.image,this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                new Image.asset(image,width: 100,
                  height: 100,
                    fit: BoxFit.fitWidth,),
                new Text(name,style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
