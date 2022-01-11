import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:travelapp/app/data/constants/color_constants.dart';
import 'package:travelapp/app/data/constants/style_constants.dart';
import 'package:travelapp/app/data/model/Carousel.dart';
import 'package:travelapp/app/modules/main/home/controllers/home_controller.dart';

class BannerTopMenu extends GetView<HomeController> {
  const BannerTopMenu({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.2,
          child: Swiper(
            autoplay: true,
            onIndexChanged: (value) {
              controller.changeCarousel(value);
            },
            itemCount: carousels.length,
            layout: SwiperLayout.DEFAULT,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(carousels[index].image),
                      fit: BoxFit.fill),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Row(
                children: map<Widget>(
                  carousels,
                  (index, image) {
                    return Container(
                      alignment: Alignment.centerLeft,
                      height: 6,
                      width: 6,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: controller.carouselIndex.value == index
                              ? mBlueColor
                              : mGreyColor),
                    );
                  },
                ),
              ),
            ),
            Text(
              'More...',
              style: mMoreDiscountStyle,
            )
          ],
        )
      ],
    );
  }
}
