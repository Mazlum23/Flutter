import 'package:flutter/material.dart';
import 'detail.dart';
import 'kitCards.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


final databaseReference = Firestore.instance;
class Home extends StatefulWidget{

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> names=[];
  final List<String> images=[];
  final List<String> descriptions=[];
  void getData()  {
     databaseReference.collection('kits').getDocuments().then((data){
      data.documents.forEach((result) {
        images.add(result.data['image']);
        names.add(result.data['name']);
        descriptions.add((result.data['description']));
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
          title: Text('Home'),
        ),
        backgroundColor: Colors.white,
        body: Container(
            padding: EdgeInsets.all(16),
            child: GridView.builder(
                padding: const EdgeInsets.all(1.0),
                itemCount:names.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 30.0, mainAxisSpacing: 30.0,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.3),),
                itemBuilder: (BuildContext context, int index){
                  return InkWell(
                    child: KitCard(
                      name: names[index],
                      image: images[index],
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detail(name:names[index],image:images[index],description:descriptions[index])
                        ),
                      );
                    },
                  );
                }
            )
        )
    );
  }
}