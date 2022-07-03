import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ofertas_controller.dart';

class Carne extends StatefulWidget {
  const Carne({Key? key}) : super(key: key);

  @override
  State<Carne> createState() => _CarneState();
}

class _CarneState extends State<Carne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dízimos e Ofertas",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          //PIX
          Container(
            padding: EdgeInsets.only(left: 15, top: 32),
            child: Row(children: const [
              Text(
                "PIX (email):",
                style: TextStyle(fontSize: 19, fontFamily: 'PTSerif'),
              )
            ]),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.grey, width: 1)),
              color: Color(0xFFA3FFCB),
              child: Row(children: [
                const Expanded(
                  child: Text("admadureiramanaus@hotmail.com",
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'PTSerif',
                      ),
                      textAlign: TextAlign.center),
                ),
                IconButton(
                    onPressed: () {
                      Clipboard.setData(const ClipboardData(
                              text: "admadureiramanaus@hotmail.com"))
                          .then((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Pix copiado!')));
                      });
                    },
                    icon: Icon(Icons.copy, size: 21, color: Colors.blue))
              ]),
            ),
          ),

          ////////// CONTA /////////////

          Container(
            padding: EdgeInsets.only(left: 15, top: 32),
            child: Row(children: const [
              Text(
                "Conta Bradesco: ",
                style: TextStyle(fontSize: 19, fontFamily: 'PTSerif'),
              )
            ]),
          ),

          Container(
            padding: EdgeInsets.all(16),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.grey, width: 1)),
              color: Color(0xFFA3FFCB),
              child: Column(children: [
                //PIX
                Container(
                  padding: EdgeInsets.only(left: 15, top: 32),
                  child: Row(children: const [
                    Text(
                      "PIX (email):",
                      style: TextStyle(fontSize: 19, fontFamily: 'PTSerif'),
                    )
                  ]),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.grey, width: 1)),
                    color: Color(0xFFA3FFCB),
                    child: ContaDadosEIcones(
                        tipoDado: "pix: admadureiramanaus@hotmail.com",
                        textoAreaDeTransferencia:
                            "admadureiramanaus@hotmail.com",
                        textoSnackBar: 'Pix copiado!'),
                  ),
                ),

                ////////// CONTA /////////////

                Container(
                  padding: EdgeInsets.only(left: 15, top: 32),
                  child: Row(children: const [
                    Text(
                      "Conta Bradesco: ",
                      style: TextStyle(fontSize: 19, fontFamily: 'PTSerif'),
                    )
                  ]),
                ),

                Container(
                  padding: EdgeInsets.all(16),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.grey, width: 1)),
                    color: Color(0xFFA3FFCB),
                    child: Column(children: [
                      //  CONTA DA IGREJA //
                      ContaDadosEIcones(
                          tipoDado: "Agência: 3142",
                          textoAreaDeTransferencia: '3142',
                          textoSnackBar: 'Agência copiada!'),

                      ContaDadosEIcones(
                          tipoDado: "Conta: 43855-3",
                          textoAreaDeTransferencia: '43855-3',
                          textoSnackBar: 'Conta copiada!'),

                      ContaDadosEIcones(
                          tipoDado:
                              "Nome: Igreja Evangélica Assembleia de Deus Ministério de Madureira - Campo 5",
                          textoAreaDeTransferencia:
                              "Igreja Evangélica Assembleia de Deus Ministério de Madureira - Campo 5",
                          textoSnackBar: 'Nome copiado!'),

                      ContaDadosEIcones(
                          tipoDado: "Cnpj: xxxx.xxxx.xx/0001-xx",
                          textoAreaDeTransferencia: "",
                          textoSnackBar: 'CNPJ copiado!'),
                    ]),
                  ),
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
