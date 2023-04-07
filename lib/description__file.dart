import 'package:flutter/material.dart';
import 'button_purpule.dart';

List<Widget> getStarts(int calificacion){

  final star = Container(
    margin: const EdgeInsets.only(
        top: 320,
        right: 5
    ),
    child: const Icon(
      Icons.star,
      color: Colors.amber,
    ),
  );

  final star_border = Container(
    margin: const EdgeInsets.only(
        top: 320,
        right: 5
    ),
    child: const Icon(
      Icons.star_border,
      color: Colors.amber,
    ),
  );

  List<Widget> starts = [];
  for(var i = 0; i < calificacion; i++){
    starts.add(star);
  }

  for(var i = 0; i < 5 - calificacion; i++){
    starts.add(star_border);
  }

  return starts;
}

class Description extends StatelessWidget{
  String namePlace;
  String textDescripcionPlace;
  int startCount;
  Description(this.namePlace, this.textDescripcionPlace, this.startCount, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final infoplace = Container(
      margin: const EdgeInsets.only(
        top:10,
        left: 20,
        right: 30
      ),
      child: Column(
        children: [
          Text(
              textDescripcionPlace,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.grey
              ),
          )
        ],
      ),
    );


    final nameplace = Container(
      margin: const EdgeInsets.only(
        top: 320,
        left: 20,
        right: 30
      ),
      child: Text(
        namePlace,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    List<Widget> estrellas = getStarts(startCount);

    final descriptionwidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            nameplace,
            Row(
              children: estrellas
            )
          ],
        ),
        infoplace,
        ButtonPurpule("Navigation")
      ],
    );

    return descriptionwidget;
  }
}