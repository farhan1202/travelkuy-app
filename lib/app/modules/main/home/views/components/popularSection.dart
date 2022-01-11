import "package:flutter/material.dart";
import 'package:travelapp/app/data/constants/color_constants.dart';
import 'package:travelapp/app/data/constants/style_constants.dart';
import 'package:travelapp/app/data/model/Populars.dart';

class PopularDestination extends StatelessWidget {
  const PopularDestination({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.225,
      child: ListView.builder(
        itemCount: populars.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            width: size.width * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: mBorderColor, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    populars[index].image,
                    height: size.height * 0.125,
                  ),
                  Text(
                    populars[index].name,
                    style: mPopularDestinationTitleStyle,
                  ),
                  Text(
                    populars[index].country,
                    style: mPopularDestinationSubtitleStyle,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
