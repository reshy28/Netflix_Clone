import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';
import 'package:netflix/utlis/db.dart';
import 'package:netflix/utlis/image_constant.dart';
import 'package:netflix/view/more/user_custom_widget/user_custom_widget.dart';

class more_screen extends StatelessWidget {
  const more_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsconstant.myblack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 160,
                  width: double.infinity,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => index <
                              Dbdata.users.length
                          ? user_custom_widget(
                              height: index == 0 ? 120 : 80,
                              width: index == 0 ? 90 : 70,
                              imageurl: Dbdata.users[index]["image"].toString(),
                              name: Dbdata.users[index]["name"].toString(),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(bottom: 50),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 80,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage(imageconstant.addbotton),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 5,
                          ),
                      itemCount: Dbdata.users.length + 1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colorsconstant.mywhite,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Manage Profile",
                      style: TextStyle(color: Colorsconstant.mywhite),
                    ),
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.message,
                              color: Colorsconstant.mywhite,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Tell friends about Netflix.",
                              style: TextStyle(color: Colorsconstant.mywhite),
                            ),
                          ],
                        ),
                        Text(
                          "when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised",
                          maxLines: 2,
                          style: TextStyle(color: Colorsconstant.mywhite),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Terms & Conditions",
                                style:
                                    TextStyle(color: Colorsconstant.mywhite)),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                height: 37,
                                width: 260,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 37,
                                width: 70,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    "Copy Link",
                                    style: TextStyle(
                                        color: Colorsconstant.myblack),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 33.6,
                                width: 36,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/wtsp.png"),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colorsconstant.mygrey,
                              ),
                              Container(
                                height: 33.6,
                                width: 36,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/facebook.png"),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colorsconstant.mygrey,
                              ),
                              Container(
                                height: 33.6,
                                width: 36,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/gmail.png"),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colorsconstant.mygrey,
                              ),
                              Container(
                                height: 33.6,
                                width: 36,
                                child: Column(
                                  children: [
                                    Icon(Icons.more_horiz,
                                        color: Colorsconstant.mywhite),
                                    Text(
                                      "More",
                                      style: TextStyle(
                                          fontSize: 6,
                                          fontWeight: FontWeight.w900,
                                          color: Colorsconstant.mywhite),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.done,
                      color: Colorsconstant.mywhite,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colorsconstant.mywhite),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(height: 01, color: Colorsconstant.mygrey),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "App Settings",
                  style: TextStyle(color: Colorsconstant.mywhite),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Account",
                  style: TextStyle(color: Colorsconstant.mywhite),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Help",
                  style: TextStyle(color: Colorsconstant.mywhite),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sign Out",
                  style: TextStyle(color: Colorsconstant.mywhite),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
