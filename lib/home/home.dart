import 'package:flutter/material.dart';
import 'detail.dart';
import 'kitCards.dart';

class Home extends StatelessWidget{
  final List<String> images = [
    'assets/homeImages/pic1.jpg',
    'assets/homeImages/pic2.png',
    'assets/homeImages/pic3.jpg',
    'assets/homeImages/pic4.jpg',
  ];
  final List<String> names = [
    'Account',
    'Ads kit',
    'Analytic',
    'App Linking',
  ];
  final List<String> descriptions = [
    'Account kit page  ',
    'Ads kit page ',
    'Analytic page ',
    'App linking page ',
  ];
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
                itemCount: images.length,
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
                      debugPrint(names[index]);
                      debugPrint(descriptions[index]);
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