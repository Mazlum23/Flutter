import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';


class CV extends StatefulWidget {
  @override
  _CV createState() => _CV();
}

class _CV extends State<CV> {

  bool _isLoading = true;
  PDFDocument doc;

  void _loadFromUrl() async {
    setState(() {
      _isLoading = true;
    });
    doc = await PDFDocument.fromURL(
        'https://firebasestorage.googleapis.com/v0/b/firstapp-d353d.appspot.com/o/mazlum_gurbuz_cv.pdf?alt=media&token=b60a0b6c-9f9f-48d7-ac03-b097af2dc3f0');
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( "If you wanna se my cv , you have to press load from asset or url(not completed)",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 15),
                textAlign: TextAlign.center,
            ),
            Flexible(
              flex: 20,
              child: _isLoading
                  ? CircularProgressIndicator()
                  : PDFViewer(
                document: doc,
              ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'Load From URL',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: _loadFromUrl,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}