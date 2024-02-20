import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';
import 'package:netflix/utlis/db.dart';

class user_custom_widget extends StatelessWidget {
  const user_custom_widget({
    super.key,
    required this.imageurl,
    this.height = 100,
    this.width = 100,
    required this.name,
  });
  final String imageurl;
  final double height;
  final double width;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageurl),
                ),
              ),
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(color: Colorsconstant.mywhite),
        ),
      ],
    );
  }
}
