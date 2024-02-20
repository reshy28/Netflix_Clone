import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';

class search_screen_custom_card extends StatelessWidget {
  const search_screen_custom_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 375,
      color: Colorsconstant.mygrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 76,
                width: 146,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/1200450/pexels-photo-1200450.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Citation"),
            ],
          ),
          Icon(
            Icons.play_circle_outline_outlined,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
