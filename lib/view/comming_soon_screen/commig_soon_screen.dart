import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';
import 'package:netflix/utlis/db.dart';
import 'package:netflix/view/comming_soon_screen/movie_cards_screen/movie_cards_screen.dart';
import 'package:netflix/view/comming_soon_screen/new_arrival_custom_card/new_arrival_custom.dart';

class comming_soon_screen extends StatefulWidget {
  const comming_soon_screen({super.key});

  @override
  State<comming_soon_screen> createState() => _comming_soon_screenState();
}

class _comming_soon_screenState extends State<comming_soon_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsconstant.myblack,
      appBar: AppBar(
        backgroundColor: Colorsconstant.myblack,
        leading: Image.asset("assets/images/Group 49.png"),
        title: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Text(
            "Notifications",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colorsconstant.mywhite,
                fontSize: 17),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => arrival_custom_card(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: Dbdata.newarrival.length),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => movie_card_screen(
                    imageurl: Dbdata.moviefeeds[index]["image"].toString(),
                    titile: Dbdata.moviefeeds[index]["titile"].toString(),
                    subtitile: Dbdata.moviefeeds[index]["subtitile"],
                    des: Dbdata.moviefeeds[index]["Des"].toString()),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: Dbdata.moviefeeds.length),
          ],
        ),
      ),
    );
  }
}
