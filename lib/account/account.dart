import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_app/account/cv.dart';
import 'package:my_app/account/personalInfo.dart';
import 'package:url_launcher/url_launcher.dart';

class Account extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Colors.grey,
            bottom: TabBar(
              tabs: [
                Tab(text: ("Personal Info")),
                Tab(text: ("CV")),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              PersonalInfo(),
              CV(),
            ],
          ),
        ),
    );
  }
}
