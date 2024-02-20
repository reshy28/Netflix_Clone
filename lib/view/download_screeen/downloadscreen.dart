import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';

class downloadscreen extends StatefulWidget {
  const downloadscreen({super.key});

  @override
  State<downloadscreen> createState() => _downloadscreenState();
}

class _downloadscreenState extends State<downloadscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsconstant.myblack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Smart Downlods",
                style: TextStyle(color: Colorsconstant.mywhite),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Indroducing Downloads For You",
                style: TextStyle(
                    color: Colorsconstant.mywhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa. id ut ipsum aliquam",
                maxLines: 3,
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colorsconstant.mywhite, fontSize: 10),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/19866071/pexels-photo-19866071/free-photo-of-smiling-brunette-woman-in-black-top-and-beige-pants.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  radius: 80,
                  backgroundColor: Colorsconstant.mygrey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                width: 353,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "SETUP",
                    style: TextStyle(color: Colorsconstant.mywhite),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  height: 33,
                  width: 257,
                  color: Colorsconstant.mygrey,
                  child: Center(
                    child: Text(
                      "Find Something to Download",
                      style: TextStyle(color: Colorsconstant.mywhite),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
