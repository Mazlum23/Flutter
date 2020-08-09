import 'package:flutter/material.dart';
class Edit extends StatefulWidget {
  @override
  _EditState createState() {
    return _EditState();
  }
}

class _EditState extends State<Edit>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Center(
        child: Text(" ",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}