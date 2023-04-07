import 'package:flutter/material.dart';

class CardImage extends StatelessWidget{
  String pathImage;
  CardImage(this.pathImage, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      margin: const EdgeInsets.only(
        top:50,
        right: 15,
        bottom: 15
      ),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            pathImage
          ),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(30),
        shape: BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            offset: Offset(0, 0.7)
          )
        ]
      ),
    );

    return card;
  }

}