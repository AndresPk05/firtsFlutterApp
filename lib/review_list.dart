import 'package:flutter/material.dart';
import 'reviwe.dart';
import 'Models/ReviewModel.dart';

List<Review> Reviews = [
  Review(ReviewModel("AndresPk10", 1, 3, 3, "assets/images/batman.jpg", "Opinion 1")),
  Review(ReviewModel("Mario Bros", 2, 5, 1, "assets/images/mario.jpg", "Opinion 2")),
  Review(ReviewModel("Nechu", 1, 3, 5, "assets/images/Gato.jpg", "Opinion 3")),
  Review(ReviewModel("Vanessa", 3, 4, 5, "assets/images/Princesa.jpg", "Opinion 4")),
];

class ReviewList extends StatelessWidget{
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
        top: 10
      ),
      child: Column(
        children: Reviews,
      ),
    );
  }

}