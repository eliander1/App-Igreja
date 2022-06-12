import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Dizimo extends StatefulWidget {
  const Dizimo({Key? key}) : super(key: key);

  @override
  State<Dizimo> createState() => _DizimoState();
}

class _DizimoState extends State<Dizimo> {
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
                child: Row(
                  children:[Expanded(child: Text("admadureiramanaus@hotmail.com",
                  style: TextStyle(fontSize: 19, fontFamily: 'PTSerif',),
                  textAlign: TextAlign.center),),

                  IconButton(onPressed: (){
                  Clipboard.setData(ClipboardData(text: "admadureiramanaus@hotmail.com")).then((_){
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Pix copiado!')));
                  });
                  }, icon: Icon(Icons.copy, size: 21, color: Colors.blue))
              ]),
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

                        Row(
                         children:[Expanded(child: Container(padding: EdgeInsets.only(left: 10),
                          child: Text("Agência: 3142", style: TextStyle(fontSize: 19), textAlign: TextAlign.left, ),),),
                          IconButton(onPressed: (){
                            Clipboard.setData(ClipboardData(text: "3142")).then((_){
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text('Agência copiada!')));
                            });
                          }, icon: Icon(Icons.copy, size: 21, color: Colors.blue))
                        ]),


                        Row(
                        children:[Expanded(child: Container(padding: EdgeInsets.only(left: 10),
                        child: Text("Conta: 43855-3", style: TextStyle(fontSize: 19), textAlign: TextAlign.left,),),),
                          IconButton(onPressed: (){
                            Clipboard.setData(ClipboardData(text: "43855-3")).then((_){
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text('Conta copiada!')));
                            });
                          }, icon: Icon(Icons.copy, size: 21, color: Colors.blue))
                        ]),

                        // NOME DA IGREJA

                        Row(
                        children: [Expanded(child: Container(padding: EdgeInsets.only(left: 10),
                          child:Text("Nome: Igreja Evangélica Assembleia de Deus Ministério de Madureira - Campo 5",
                          style: TextStyle(fontSize: 19), textAlign: TextAlign.left,),),),
                          IconButton(onPressed: (){
                            Clipboard.setData(ClipboardData(text: "Igreja Evangélica Assembleia de Deus Ministério de Madureira - Campo 5")).then((_){
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text('Nome copiado!')));
                            });
                          }, icon: Icon(Icons.copy, size: 21, color: Colors.blue))
                        ]),

                        //CNPJ

                        Row(
                            children: [Expanded(child: Container(padding: EdgeInsets.only(left: 10),
                              child: Text("Cnpj: xxxx.xxxx.xx/0001-xx",
                              style: TextStyle(fontSize: 19), textAlign: TextAlign.left,),),),
                              IconButton(onPressed: (){
                                Clipboard.setData(ClipboardData(text: "")).then((_){
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(content: Text('CNPJ copiado!')));
                                });
                              }, icon: Icon(Icons.copy, size: 21, color: Colors.blue))
                            ]),






                      ]
                ),
              ),

              )])
      )

    );
  }
}
