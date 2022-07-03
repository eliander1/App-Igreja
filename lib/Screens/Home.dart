import 'package:app17_igrejanovo/screens/obras/Obra.dart';
import 'package:flutter/material.dart';
import 'CustomSearchDelegate.dart';
import 'screens/cultos/cultos.dart';
import 'screens/oferta/Ofertas.dart';
import 'screens/connect/Connect.dart';


class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;
  String _resultado = "";


  @override
  Widget build(BuildContext context) {

    List telas = [
      Inicio(_resultado),
      Obra( _resultado ),
      Connect(),
      Ofertas()
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green, opacity: 0.7),
        backgroundColor: Colors.white,
        title: Image.asset("images/logo_admadureira.png",width: 110),
        actions: [
          IconButton(onPressed: () async {
            String? res = await showSearch(context: context, delegate: CustomSearchDelegate());
            setState(() {
              _resultado = res!;
            });}, icon: Icon(Icons.search)),
        ],
      ),


      body: telas[_indiceAtual],


      bottomNavigationBar:  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFD8FFD3), width: 0.5))),
        child: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });

        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.orange,
        unselectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Cultos"),
          BottomNavigationBarItem(icon: Icon(Icons.apartment), label: "Obra"),
          BottomNavigationBarItem(icon: Icon(Icons.account_tree_outlined), label: "Connect"),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on_outlined), label: "Oferta")

        ],
      ),
      )
    );
  }
}
