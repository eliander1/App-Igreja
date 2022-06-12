import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import 'Carne.dart';
import 'Dizimo.dart';


class Ofertas extends StatefulWidget {
  const Ofertas({Key? key}) : super(key: key);

  @override
  State<Ofertas> createState() => _OfertasState();
}

class _OfertasState extends State<Ofertas> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(child:
                Container(
                    height: 80,
                    child:  Card(
                        elevation: 2,
                        color: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.grey, width: 1)),

                        child: Row( mainAxisAlignment: MainAxisAlignment.center,
                          children:[Expanded(
                            child: Text("Ofertas Nova Sede",
                                style: TextStyle(fontSize: 25, fontFamily: 'PTSerif', color: Colors.black),
                                textAlign: TextAlign.center),),],

                        )
                    )
                ),
                onTap: (){Navigator.push(context, PageTransition(child: Dizimo(), type: PageTransitionType.bottomToTop));},
              ),

              GestureDetector(child:
              Container(
                  height: 80,
                  child:  Card(
                      elevation: 2,
                      color: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.grey, width: 1)
                      ),
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        children:[Expanded(
                          child: Text("Dízimos e Ofertas",
                              style: TextStyle(fontSize: 25, fontFamily: 'PTSerif', color: Colors.black),
                              textAlign: TextAlign.center),),],

                      )
                  )
              ),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Carne()));},
        )],


        )
    );
  }
}
