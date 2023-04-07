import 'package:flutter/material.dart';

class Gradiant extends StatelessWidget{
  String textAppNavbar = "Bogota";
  Gradiant(this.textAppNavbar, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF595cff),
            Color(0xFFc6f8ff),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          tileMode: TileMode.clamp
        )
      ),

      alignment: const Alignment(-0.8, -0.8),
      child: Text(
          textAppNavbar,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
    );
  }

}