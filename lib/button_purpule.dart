import 'package:flutter/material.dart';

class ButtonPurpule extends StatelessWidget{
  String TextButton;

  ButtonPurpule(this.TextButton, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final button = InkWell(
      onTap: (){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Pruebas Snack"))
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top:20,
          left:20
        ),
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF9fb7f5),
              Color(0xFF6c90d8),
              Color(0xFF2c6bbb)
            ],
            begin: FractionalOffset(0, 0.5),
            end: FractionalOffset(1, 0.2)
          )
        ),
        child: Center(
          child: Text(
            TextButton,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );

    return button;
  }

}