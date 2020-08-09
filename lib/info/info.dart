import 'package:flutter/material.dart';

class Info extends StatelessWidget{
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
              Image.asset("assets/images/huawei.png"),
              Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(4),
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(
                              "Huawei is a leader in information and communication technologies (ICT) technologies and smart devices. "
                              "is a global provider. To be telecom networks, IT, smart devices and cloud services"
                              "website, smart"
                              "the digital for a world is committed to bringing it to a person, home and organization.",
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