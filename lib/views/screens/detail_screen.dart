import 'package:beepz/constants/string_constants.dart';
import 'package:beepz/constants/style_constants.dart';
import 'package:beepz/constants/urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../constants/color_constants.dart';
import '../../controllers/request_controller.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key, required this.index}) : super(key: key);

  final int index;
  final List<String> timelineTitle = [
    'Booking Confirmed',
    'Driver on the way to pickup',
    'QR Code Scanned',
    'Car Picked Up',
    'Reached Garage',
    'Service Started',
    'Service Ended',
    'Driver on the way to Drop off',
    'Booking Completed',
  ];
  final List<IconData> timelineIcon = [
    Icons.thumb_up,
    Icons.person,
    Icons.qr_code,
    Icons.car_rental,
    Icons.home,
    Icons.start,
    Icons.stop,
    Icons.pin_drop,
    Icons.done,
  ];
  @override
  Widget build(BuildContext context) {
    final requestController = Provider.of<RequestController>(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 35.0, left: 5.0, right: 30.0, bottom: 50.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Urls.logo,
                          height: 40,
                        ),
                        Text(
                          StringConstants.appName,
                          style: kLogoTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: ListView.builder(
                      itemCount: timelineTitle.length,
                      itemBuilder: (context, index) {
                        return TimelineTile(
                          afterLineStyle: LineStyle(
                            color: index == 0 ? Colors.black : Colors.grey,
                            thickness: 1,
                          ),
                          beforeLineStyle: LineStyle(
                            color: index == 1 ? Colors.black : Colors.grey,
                            thickness: 1,
                          ),
                          indicatorStyle: IndicatorStyle(
                            color: (index == 0 || index == 1)
                                ? kGreenColor
                                : const Color.fromARGB(255, 194, 193, 193),
                            iconStyle: (index == 0 || index == 1)
                                ? IconStyle(
                                    iconData: Icons.done,
                                    color: Colors.white,
                                  )
                                : IconStyle(
                                    iconData: Icons.done,
                                    color: Colors.transparent,
                                  ),
                          ),
                          isFirst: index == 0 ? true : false,
                          isLast: index == 8 ? true : false,
                          endChild: Row(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 12,
                              ),
                              child: Icon(
                                timelineIcon[index],
                                color: (index == 0 || index == 1)
                                    ? kPrimaryColor
                                    : Colors.grey,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    timelineTitle[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: (index == 0 || index == 1)
                                          ? kPrimaryColor
                                          : Colors.black,
                                    ),
                                  ),
                                  const Text(
                                    StringConstants.timelineSubtitle,
                                    style: kSubtitleTextStyle,
                                  )
                                ],
                              ),
                            )
                          ]),
                        );
                      }),
                ),
                Positioned(
                  top: -40,
                  left: 30,
                  right: 30,
                  child: Container(
                    alignment: Alignment.center,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            offset: const Offset(0, 0),
                            blurRadius: 20.0,
                            spreadRadius: 3)
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: -10,
                          bottom: -10,
                          child: SvgPicture.asset(
                            Urls.waveSvg,
                            semanticsLabel: 'wave shape',
                            color: kShadowColor,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                '${requestController.request[index].category!.icon}',
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(StringConstants.orderNumber),
                                  Text(
                                    requestController
                                        .request[index].readableOrderNo
                                        .toString(),
                                    style: kTokenTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
