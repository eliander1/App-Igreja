import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContaDadosEIcones extends StatelessWidget {
  String tipoDado;
  String textoAreaDeTransferencia;
  String textoSnackBar;

  ContaDadosEIcones({required this.tipoDado, required this.textoAreaDeTransferencia, required this.textoSnackBar});

  @override
  Widget build(BuildContext context) {
    return Row(
        children:[Expanded(child: Container(padding: EdgeInsets.only(left: 10),
          child: Text(tipoDado, style: TextStyle(fontSize: 19), textAlign: TextAlign.left, ),),),
          IconButton(onPressed: (){
            Clipboard.setData(ClipboardData(text: textoAreaDeTransferencia)).then((_){
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(textoSnackBar)));
            });
          }, icon: Icon(Icons.copy, size: 21, color: Colors.blue))
        ]);
  }
}
