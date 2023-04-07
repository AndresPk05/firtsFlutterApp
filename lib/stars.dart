import 'package:flutter/material.dart';

List<Widget> getStarts(int calificacion){

  final star = Container(
    margin: const EdgeInsets.only(
        left: 2
    ),
    child: const Icon(
      Icons.star,
      color: Colors.amber,
        size: 10
    ),
  );

  final star_border = Container(
    margin: const EdgeInsets.only(
        left: 2
    ),
    child: const Icon(
      Icons.star_border,
      color: Colors.amber,
      size: 10
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

class Star extends StatelessWidget{
  int calificacion;

  Star(this.calificacion,{super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
        left: 5
      ),
      child: Row(
          children: getStarts(calificacion)
      ),
    );
  }

}