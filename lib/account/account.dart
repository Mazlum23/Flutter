import 'package:flutter/material.dart';
import 'package:my_app/account/cv.dart';
import 'package:my_app/account/personalInfo.dart';



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
            title: Text('Profile'),
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
