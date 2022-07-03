import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ofertas_controller.dart';


class Dizimo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ofertas e Carnê Nova Sede", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body:Container(
          color: Colors.white,

          child:Column(

            children:[
      //PIX
            Container(
            padding: EdgeInsets.only(left: 15, top: 32),
              child: Row(
                children: [Text("PIX (email):", style: TextStyle( fontSize: 19, fontFamily: 'PTSerif'),)]
        ),
      ),

            Container(padding: EdgeInsets.all(10),
              child: Card(elevation: 2, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.grey, width: 1)),
                color: Color(0xFFA3FFCB),
                child:

                ContaDadosEIcones(
                    tipoDado: "pix: admadureiramanaus@hotmail.com",
                    textoAreaDeTransferencia: "admadureiramanaus@hotmail.com",
                    textoSnackBar: 'Pix copiado!'
                ),
        ),
    ),



              ////////// CONTA /////////////



              Container(
                padding: EdgeInsets.only(left: 15, top: 32),
                child: Row(
                    children: [Text("Conta Bradesco: ", style: TextStyle( fontSize: 19, fontFamily: 'PTSerif'),)]
                ),
              ),

              Container(
                padding: EdgeInsets.all(16),
                child: Card(elevation: 4, shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.grey, width: 1)),
                  color: Color(0xFFA3FFCB),
                  child: Column(
                      children: [
                        
                        //  CONTA DA IGREJA //
                        ContaDadosEIcones(
                            tipoDado: "Agência: 3142",
                            textoAreaDeTransferencia: '3142',
                            textoSnackBar: 'Agência copiada!'
                        ),

                        ContaDadosEIcones(
                            tipoDado: "Conta: 43855-3",
                            textoAreaDeTransferencia: '43855-3',
                            textoSnackBar: 'Conta copiada!'
                        ),

                        ContaDadosEIcones(
                            tipoDado: "Nome: Igreja Evangélica Assembleia de Deus Ministério de Madureira - Campo 5",
                            textoAreaDeTransferencia: "Igreja Evangélica Assembleia de Deus Ministério de Madureira - Campo 5",
                            textoSnackBar: 'Nome copiado!'
                        ),

                        ContaDadosEIcones(
                            tipoDado: "Cnpj: xxxx.xxxx.xx/0001-xx",
                            textoAreaDeTransferencia: "",
                            textoSnackBar: 'CNPJ copiado!'
                        ),

                      ]
                ),
              ),

              )])
      )

    );
  }
}


