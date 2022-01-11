import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:travelapp/app/data/constants/color_constants.dart';
import 'package:travelapp/app/data/constants/style_constants.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CardService(
                image: 'assets/svg/service_flight_icon.svg',
                title: "Flight",
                subtitle: "Feel Free",
                message: "Flight",
              ),
              CardService(
                image: 'assets/svg/service_train_icon.svg',
                title: "Trains",
                subtitle: "Intercity",
                message: "Trains",
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              CardService(
                image: 'assets/svg/service_hotel_icon.svg',
                title: "Hotel",
                subtitle: "Let\'s take a break",
                message: "Hotel",
              ),
              CardService(
                image: 'assets/svg/service_car_rental_icon.svg',
                title: "Car Rental",
                subtitle: "Around the City",
                message: "Car Rent",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardService extends StatelessWidget {
  const CardService({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.message,
  }) : super(key: key);

  final String title, subtitle, image, message;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Get.snackbar("Menu", message),
        child: Container(
          margin: EdgeInsets.only(left: 8),
          padding: EdgeInsets.all(8),
          height: 64,
          decoration: BoxDecoration(
            color: mFillColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: mBorderColor, width: 1),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                image,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: mServiceTitleStyle,
                    ),
                    Text(
                      subtitle,
                      style: mServiceSubtitleStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
