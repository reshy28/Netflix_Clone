import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';

class movie_card_screen extends StatelessWidget {
  const movie_card_screen(
      {super.key,
      required this.imageurl,
      required this.titile,
      this.subtitile,
      required this.des});

  final String imageurl;
  final String titile;
  final String? subtitile;
  final String des;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 193,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageurl), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    Text(
                      "Remind Me",
                      style: TextStyle(
                          color: Colorsconstant.mywhite, fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colorsconstant.mywhite,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                              color: Colorsconstant.mywhite, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitile!,
                  style: TextStyle(color: Colorsconstant.mywhite, fontSize: 10),
                ),
                Text(
                  titile,
                  style: TextStyle(
                      color: Colorsconstant.mywhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colorsconstant.mywhite, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  ".screemy",
                  style: TextStyle(
                      color: Colorsconstant.mywhite,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ".Slow Burn",
                  style: TextStyle(
                      color: Colorsconstant.mywhite,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ".Suscpenseful",
                  style: TextStyle(
                      color: Colorsconstant.mywhite,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ".Teen",
                  style: TextStyle(
                      color: Colorsconstant.mywhite,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ".Mystery",
                  style: TextStyle(
                      color: Colorsconstant.mywhite,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ".screemy",
                  style: TextStyle(
                      color: Colorsconstant.mywhite,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
