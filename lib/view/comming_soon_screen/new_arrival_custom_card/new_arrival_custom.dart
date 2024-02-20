import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';

class arrival_custom_card extends StatelessWidget {
  const arrival_custom_card({super.key});
/////////coomingsoon_scrren new arrival
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 58,
              width: 113,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/821668/pexels-photo-821668.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NEW ARRIVAL",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colorsconstant.mywhite),
              ),
              Text(
                "El Chapo",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colorsconstant.mywhite),
              ),
              Text(
                "Nov 6",
                style: TextStyle(color: Colorsconstant.mywhite),
              ),
            ],
          )
        ],
      ),
    );
  }
}
