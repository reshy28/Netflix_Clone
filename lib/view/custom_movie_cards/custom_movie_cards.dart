import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';

class custom_movie_cards extends StatelessWidget {
  const custom_movie_cards({super.key, required this.titile});
  final String titile;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            titile,
            style: TextStyle(
                color: Colorsconstant.mywhite,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    height: 161,
                    width: 103,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
