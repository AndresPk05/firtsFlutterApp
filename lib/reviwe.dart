import 'dart:io';
import 'package:flutter/material.dart';
import 'Models/ReviewModel.dart';
import 'stars.dart';


class Review extends StatelessWidget{
  ReviewModel reviewModel;
  Review(this.reviewModel, {super.key});

  @override
  Widget build(BuildContext context) {
    final starsCalificacion = Star(reviewModel.calificacion);

    // TODO: implement build
    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 30
      ),
      child: CircleAvatar(
        radius: 37,
        backgroundColor: Colors.black,
        child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35,
            child: SizedBox(
                width: 80,
                height: 80,
                child: ClipOval(
                  child: Image.asset(reviewModel.imagen,
                  ),
                )
            )
        ),
      )
    );

    final namePerson = Container(
      margin: const EdgeInsets.only(
        left: 20
      ),
      child: Text(
        reviewModel.nombre,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 15,
          ),
      )
    );

    final countReviewrs = Container(
      child: Text(
        "${reviewModel.numberReviews} review",
        style: const TextStyle(
          fontSize: 10,
          color: Colors.grey
        ),
      ),
    );

    final countPhotos = Container(
      margin: const EdgeInsets.only(
        left: 2
      ),
      child: Text(
        "${reviewModel.numberPhotos} photos",
        style: const TextStyle(
            fontSize: 10,
            color: Colors.grey
        ),
      ),
    );

    final detailReviewrs = Container(
      margin: const EdgeInsets.only(
        left: 20,
        top:5
      ),
      child: Row(
        children: [
          countReviewrs,
          countPhotos,
          starsCalificacion
        ],
      )
    );

    final opinionDescription = Container(
      margin: const EdgeInsets.only(
          left: 20,
          top:5
      ),
      child:  Text(
        reviewModel.descripcionOpinion,
        style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold
        ),
      ),
    );

    final descriptionUserName = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        namePerson,
        detailReviewrs,
        opinionDescription
      ],
    );

    return Row(
      children: [
        photo,
        descriptionUserName
      ],
    );
  }
}