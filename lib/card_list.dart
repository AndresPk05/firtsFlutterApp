import 'package:flutter/material.dart';
import 'package:untitled1/card_Image.dart';
import 'card_Image.dart';

class CardList extends StatelessWidget{
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final list = Container(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(30),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('assets/images/Bogota/bogota_night.jpg'),
          CardImage('assets/images/Bogota/candelaria.jpg'),
          CardImage('assets/images/Bogota/colpatria.jpg'),
          CardImage('assets/images/Bogota/monserrate.jpeg')
        ],
      ),

    );

    return list;
  }

}