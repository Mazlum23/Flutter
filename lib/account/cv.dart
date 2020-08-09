import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';


class CV extends StatefulWidget {
  @override
  _CV createState() => _CV();
}

class _CV extends State<CV> {

  bool _isLoading = true;
  PDFDocument doc;

  void _loadFromAssets() async {
    setState(() {
      _isLoading = true;
    });
    doc = await PDFDocument.fromAsset("assets/mazlum_gurbuz_cv.pdf");
    setState(() {
      _isLoading = false;
    });
  }
  void _loadFromUrl() async {
    setState(() {
      _isLoading = true;
    });
    doc = await PDFDocument.fromURL(
        'https://www.biliciyapi.com.tr/uploads/fiyat/dosya/dosya1.pdf');
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
                        'Load From Assets',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: _loadFromAssets,
                    ),
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