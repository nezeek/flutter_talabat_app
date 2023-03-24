import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ResturantInfo extends StatelessWidget {
  const ResturantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "2in1",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Pizza,Burgers,Italian",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Text(
              "Info",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 26,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text("4.5 (10874 ratings)"),
                ],
              ),
              Text(
                "Reviews",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.orange),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("In 24 mins (Delivery fee: IQD 500)"),
                    Text("Delivered with live tracking ny talabat"),
                  ],
                )
              ],
            ),
            Icon(Icons.info_outline)
          ]),
        )
      ]),
    );
  }
}
