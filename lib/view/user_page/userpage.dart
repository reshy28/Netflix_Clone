import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';
import 'package:netflix/utlis/db.dart';
import 'package:netflix/utlis/image_constant.dart';
import 'package:netflix/view/bottom_nav/bottom_nav.dart';

class users extends StatefulWidget {
  const users({super.key});

  @override
  State<users> createState() => _usersState();
}

class _usersState extends State<users> {
  Dbdata objdb = Dbdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            SizedBox(
              width: 100,
            ),
            SizedBox(
              height: 300,
              width: 130,
              child: Image.asset("assets/images/Vector.png"),
            ),
          ],
        ),
        actions: [
          Image.asset("assets/images/Vector (1).png"),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 1, mainAxisSpacing: 1, crossAxisCount: 2),
          itemCount: Dbdata.users.length + 1,
          itemBuilder: (context, index) => index < Dbdata.users.length
              ? Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => bottom_nav(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage(Dbdata.users[index]["image"]!),
                                fit: BoxFit.cover),
                          ),
                          height: 100,
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        Dbdata.users[index]["name"]!,
                        style: TextStyle(color: Colorsconstant.mywhite),
                      )
                    ],
                  ),
                )
              : Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageconstant.addbotton),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
