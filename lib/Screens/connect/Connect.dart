import 'package:flutter/material.dart';
import 'connect_controller.dart';

class Connect extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: ListView.builder(
            itemCount: connectBairro.length,
            itemBuilder: (BuildContext context, int index) {
              print("item $index");

              var contador = index + 1;

              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.grey, width: 0.4)),
                color: Color(0xFFF6FFF6),
                child: ListTile(
                  leading: Icon(Icons.whatsapp_sharp, color: Colors.green),
                  title: Text("Connect #$contador"),
                  subtitle: Text("Bairro: " + connectBairro[index]),
                  onTap: () => launchLink("https://api.whatsapp.com/"),
                ),
              );
            }),
      ),
    );
  }
}
