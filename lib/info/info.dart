import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Info extends StatefulWidget{
  @override
  _InfoState createState() => _InfoState();
}

final databaseReference = Firestore.instance;
class _InfoState extends State<Info> {
  String image;
  String description;
  void getData() {
    databaseReference.collection("info").getDocuments().then((querySnapshot) {
      querySnapshot.documents.forEach((result) {
        setState(() { // call setState to rebuild the view
          this.image= result.data['image'];
          this.description=result.data['description'];
        });
      });
    });
  }
  initState(){
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Information Huawei'),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Image.network(this.image),
              Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(4),
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(this.description,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Open Sans',
                        fontSize: 15),)
              )
            ],
          )
      ),
    );
  }
}