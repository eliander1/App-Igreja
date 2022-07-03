import 'package:flutter/material.dart';

class BotaoOferta extends StatelessWidget {
  Function function;
  String CTA;

  BotaoOferta ({required this.function, required this.CTA});

  @override
  Widget build(BuildContext context) {
    return
      ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states){
          if (states.contains(MaterialState.pressed)){
            return const Color(0xff6ec646);}
            return const Color(0xffc14608);}),

        minimumSize: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)){
            return const Size(double.maxFinite*0.85, 50);}
            return const Size(double.maxFinite, 80);}),

        shape: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)){
            return RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));}
            return RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));}),

        textStyle: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)){
            return const TextStyle(fontSize: 12, fontFamily: "Poppins-Bold");}
            return const TextStyle(fontSize: 18, fontFamily: "Poppins-Bold");}),),

          onPressed: (){function();},
          child:  Text(CTA)

    );
  }
}
