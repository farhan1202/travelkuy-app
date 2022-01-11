import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/app/data/constants/color_constants.dart';
import 'package:travelapp/app/modules/main/home/controllers/home_controller.dart';

class BottomNavBar extends GetView<HomeController> {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottomTextStyle =
        GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: mFillColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Obx(() => BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  title: Text(
                    "Home",
                    style: bottomTextStyle,
                  ),
                  icon: controller.navSelected.value == 0
                      ? new SvgPicture.asset("assets/icons/home_colored.svg")
                      : new SvgPicture.asset("assets/icons/home.svg")),
              BottomNavigationBarItem(
                  title: Text(
                    "MyOrder",
                    style: bottomTextStyle,
                  ),
                  icon: controller.navSelected.value == 1
                      ? new SvgPicture.asset("assets/icons/order_colored.svg")
                      : new SvgPicture.asset("assets/icons/order.svg")),
              BottomNavigationBarItem(
                  title: Text(
                    "Watch List",
                    style: bottomTextStyle,
                  ),
                  icon: controller.navSelected.value == 2
                      ? new SvgPicture.asset("assets/icons/watch_colored.svg")
                      : new SvgPicture.asset("assets/icons/watch.svg")),
              BottomNavigationBarItem(
                  title: Text(
                    "Account",
                    style: bottomTextStyle,
                  ),
                  icon: controller.navSelected.value == 3
                      ? new SvgPicture.asset("assets/icons/account_colored.svg")
                      : new SvgPicture.asset("assets/icons/account.svg")),
            ],
            currentIndex: controller.navSelected.value,
            onTap: (value) => controller.changeNavSelected(value),
            selectedItemColor: mBlueColor,
            unselectedItemColor: mSubtitleColor,
            backgroundColor: Colors.transparent,
            // type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            showUnselectedLabels: true,
            elevation: 0,
          )),
    );
  }
}
