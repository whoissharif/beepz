import 'package:beepz/constants/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../constants/color_constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 30.0, left: 30.0, right: 30.0, bottom: 50.0),
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
                          'assets/images/car.png',
                          height: 40,
                        ),
                        Text(
                          'Beepz',
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
                      itemCount: 8,
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
                                : Colors.grey,
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
                          endChild: Row(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 12,
                              ),
                              child: Icon(
                                Icons.location_on,
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
                                    'Title ${index + 1}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: (index == 0 || index == 1)
                                          ? kPrimaryColor
                                          : Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Subtitle ${index + 1}',
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
                  top: -35,
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
                            'assets/svg/wave.svg',
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
                              const CircleAvatar(
                                child: Icon(Icons.document_scanner),
                                backgroundColor: kSecondaryColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Order Number'),
                                  Text(
                                    '#375465',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
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
