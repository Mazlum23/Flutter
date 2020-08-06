import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print(' could not launch $command');
  }
}
class PersonalInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          margin: EdgeInsets.all(4),
          padding: EdgeInsets.all(4),
          color: Colors.white,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          'assets/homeImages/pic1.jpg',
                          width: 110.0,
                          height: 110.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text("Mazlum Gürbüz", style: TextStyle(
                          color: Colors.black),),
                      Text("mazlumgurbuz30@gmail.com", style: TextStyle(
                          color: Colors.black),),
                      Container(
                          color: Colors.white,
                          margin: const EdgeInsets.all(40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    new BorderRadius.circular(15.0)),
                                onPressed: () {
                                  customLaunch(
                                      'mailto:mazlumgurbuz30@gmail.com?subject=Feed%20back&body=Write your%20feedback');
                                },
                                child: Text("Mail"),
                              ),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    new BorderRadius.circular(15.0)),
                                onPressed: () {
                                  customLaunch('tel:+123456789');
                                },
                                child: Text("Phone"),
                              ),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    new BorderRadius.circular(15.0)),
                                onPressed: () {
                                  customLaunch('sms:+123456789');
                                },
                                child: Text("Sms"),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.all(5),
                      width: 135,
                      height: 30,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            new BorderRadius.circular(15.0)),
                        onPressed: () {
                          customLaunch(
                              'https://twitter.com/mazlumgurbuz1');
                        },
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/twitter.png",
                              height: 20.0,
                              width: 20.0,
                            ),
                            Expanded(
                              child: Text(
                                'Twitter',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.all(5),
                      width: 135,
                      height: 30,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            new BorderRadius.circular(15.0)),
                        onPressed: () {
                          customLaunch('https://github.com/Mazlum23');
                        },
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/github.png",
                              height: 20.0,
                              width: 20.0,
                            ),
                            Expanded(
                              child: Text(
                                'Github',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.all(5),
                      width: 135,
                      height: 30,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            new BorderRadius.circular(15.0)),
                        onPressed: () {
                          customLaunch(
                              'https://www.instagram.com/?hl=tr');
                        },
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/instagram.png",
                              height: 20.0,
                              width: 20.0,
                            ),
                            Expanded(
                              child: Text(
                                'Instagram',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.all(5),
                      width: 135,
                      height: 30,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            new BorderRadius.circular(15.0)),
                        onPressed: () {
                          customLaunch('https://tr-tr.facebook.com/mazlum.gurbuz.756');
                        },
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/facebook.png",
                              height: 20.0,
                              width: 20.0,
                            ),
                            Expanded(
                              child: Text(
                                'Facebook',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      margin: const EdgeInsets.all(8),
                      width: 135,
                      height: 30,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            new BorderRadius.circular(15.0)),
                        onPressed: () {
                          customLaunch(
                              'mailto:mazlumgurbuz30@gmail.com?subject=Feed%20back&body=Write your%20feedback');
                        },
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/email.png",
                              height: 20.0,
                              width: 20.0,
                            ),
                            Expanded(
                              child: Text(
                                'Mail',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}