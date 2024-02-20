import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';
import 'package:netflix/view/search_screen/search_screen_custom_card/search_screen_custom_card.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({super.key});

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
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
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.mic),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: "Search for a show,movie,genie,etc",
                  hintStyle: TextStyle(color: Colorsconstant.mygrey),
                ),
              ),
              Text(
                "Top Searches",
                style: TextStyle(
                    fontSize: 20,
                    color: Colorsconstant.mywhite,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) =>
                        search_screen_custom_card(),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
