import 'package:flutter/material.dart';
import 'gradiant.dart';
import 'card_list.dart';
class HeaderApp extends StatelessWidget{
  const HeaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final header = Stack(
      children: [
        Gradiant("Welcome to Bogota"),
        CardList()
      ],
    );

    return header;
  }

}