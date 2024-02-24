import 'package:flutter/material.dart';
import 'package:netflix/utlis/colors_constant/colors.dart';

class custom_movie_cards extends StatelessWidget {
  const custom_movie_cards({
    super.key,
    required this.titile,
    this.height = 200,
    this.Width = 100,
    this.iscircular = false,
    required this.imageList,
    this.isOPvisible = false,
  });
  final String titile;
  final double height;
  final double Width;
  final bool iscircular;
  final List<String> imageList;
  final isOPvisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            titile,
            style: TextStyle(
                color: Colorsconstant.mywhite,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        SizedBox(
          height: height,
          child: ListView.builder(
            itemCount: imageList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: iscircular == true
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                      color: Colors.amber,
                      image: DecorationImage(
                          image: AssetImage(imageList[index]),
                          fit: BoxFit.fill),
                    ),
                    height: height,
                    width: Width,
                    alignment: Alignment.bottomCenter,
                    child: Visibility(
                      visible: isOPvisible,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: Width,
                            height: 5,
                            color: Colors.grey,
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 40,
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            height: 30,
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.info,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
