import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';
import 'package:netflix/utlis/db.dart';
import 'package:netflix/utlis/image_constant.dart';
import 'package:netflix/view/home_screen/custom_movie_cards/custom_movie_cards.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 425,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imageconstant.homepageimage,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/logos_netflix-icon.png"),
                    Text(
                      "TV Shows",
                      style: TextStyle(color: Colorsconstant.mywhite),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(color: Colorsconstant.mywhite),
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colorsconstant.mywhite),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 120,
                child: Row(
                  children: [
                    Image.asset(imageconstant.top10),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      child: Text(
                        "#2 in nigeria Today",
                        style: TextStyle(color: Colorsconstant.mywhite),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: Colorsconstant.mywhite,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(color: Colorsconstant.mywhite),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 10, vertical: 10),
                color: Colorsconstant.mygrey,
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colorsconstant.mywhite,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(color: Colorsconstant.mywhite),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Icon(
                    Icons.info,
                    color: Colorsconstant.mywhite,
                  ),
                  Text(
                    "Info",
                    style: TextStyle(color: Colorsconstant.mywhite),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text(
          //         "Previews",
          //         style: TextStyle(
          //             fontSize: 26.75,
          //             fontWeight: FontWeight.bold,
          //             color: Colorsconstant.mywhite),
          //       ),
          //     ),
          //   ],
          // ),
          custom_movie_cards(
            imageList: Dbdata.previewurls,
            titile: "Preview",
            iscircular: true,
            height: 120,
          ),
          custom_movie_cards(
            titile: "continue for watching us",
            imageList: Dbdata.previewurls,
            isOPvisible: true,
            height: 177,
            Width: 103,
          ),
          custom_movie_cards(
            titile: "My List",
            imageList: Dbdata.previewurls,
            height: 170,
            Width: 103,
          ),
          custom_movie_cards(
            titile: "Favorite",
            imageList: Dbdata.previewurls,
            height: 170,
            Width: 103,
          ),
          custom_movie_cards(
            titile: "Trending Now",
            imageList: Dbdata.previewurls,
            height: 200,
            Width: 140,
          ),
          custom_movie_cards(
            titile: "Popular on Netflix",
            imageList: Dbdata.previewurls,
            height: 170,
            Width: 103,
          ),
        ],
      ),
    );
  }
}
