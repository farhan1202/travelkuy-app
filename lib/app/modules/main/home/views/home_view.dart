import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:travelapp/app/data/constants/color_constants.dart';
import 'package:travelapp/app/data/constants/style_constants.dart';

import '../controllers/home_controller.dart';
import 'components/bannerTopMenu.dart';
import 'components/bottomNavBar.dart';
import 'components/serviceSection.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarTravelKuy(),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              child: Text(
                "Hey, This Promos for you",
                style: mTitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BannerTopMenu(size: size),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Lets Booking!",
                      style: mTitleStyle,
                    ),
                  ),
                  ServiceSection(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Popular Destination",
                      style: mTitleStyle,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar AppBarTravelKuy() {
    return AppBar(
      title: SvgPicture.asset("assets/svg/travelkuy_logo.svg"),
      elevation: 0,
      backgroundColor: mBackgroundColor,
    );
  }
}
