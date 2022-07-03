import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../Widgets/botoes.dart';
import 'Carne.dart';
import 'Dizimo.dart';

class Ofertas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BotaoOferta(CTA: 'Ofertas Nova Sede', function: (){
                Navigator.push(context, PageTransition(child: const Dizimo(), type: PageTransitionType.bottomToTop));
              }),

              BotaoOferta(CTA: 'Dízimos e Ofertas', function: (){
                Navigator.push(context, PageTransition(child: const Carne(), type: PageTransitionType.bottomToTop));
              })
              ],
        )
    );
  }
}
