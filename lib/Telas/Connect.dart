import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Listas/lista_connect.dart';
import 'package:url_launcher/url_launcher.dart';

class Connect extends StatefulWidget {
  const Connect({Key? key}) : super(key: key);
  @override
  State<Connect> createState() => _ConnectState();
}
Future<void> _launchLink(String url) async {
  if (!await canLaunch(url)) {
    await launch(url, forceWebView: false, forceSafariVC: false);
  } else {
    print('Não pode executar o link $url');
  }
}

class _ConnectState extends State<Connect> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: ListView.builder(
              itemCount: connectBairro.length,

              itemBuilder: (BuildContext context, int index){
                print("item $index");

                var contador = index+1;

                return Card(elevation: 2, shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.grey, width: 0.4)),
                  color: Color(0xFFF6FFF6),
                  child: ListTile(
                    leading: Icon(Icons.whatsapp_sharp,
                    color: Colors.green),
                    title: Text( "Connect #$contador" ),
                    subtitle: Text("Bairro: " + connectBairro[index]),
                  onTap: () => _launchLink("https://api.whatsapp.com/send?phone=5592984130408&text=Paz%20do%20Senhor%2C%20gostaria%20de%20mais%20informa%C3%A7%C3%B5es%20sobre%20o%20Connect%20%231"),

                ));

          }
          )
        )
    );
  }
}
