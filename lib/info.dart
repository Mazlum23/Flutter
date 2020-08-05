import 'package:flutter/material.dart';

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/huawei.png"),
              Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(4),
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text("Huawei, bilgi ve iletişim teknolojileri (ICT) altyapısı ve akıllı cihazlarda lider "
                      "bir küresel sağlayıcıdır. Telekom ağları, BT, akıllı cihazlar ve bulut hizmetleri olmak"
                      " üzere dört önemli etki alanında entegre çözümler ile tam internet bağlantılı, akıllı"
                      " bir dünya için dijitali, her bir kişiye, eve ve kuruluşa sunma taahhüdünde bulunmaktadır.",
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