import 'package:beepz/constants/color_constants.dart';
import 'package:beepz/constants/style_constants.dart';
import 'package:beepz/views/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/menu_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MenuIcon(),
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
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: const BoxDecoration(
                    color: kShadowColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 40,
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return const DetailScreen();
                            }));
                          },
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    offset: const Offset(0, 0),
                                    blurRadius: 8.0,
                                    spreadRadius: 1)
                              ],
                            ),
                            child: Stack(
                              clipBehavior: Clip.hardEdge,
                              children: [
                                Positioned(
                                  right: -10,
                                  bottom: -10,
                                  child: SvgPicture.asset(
                                    'assets/svg/wave.svg',
                                    semanticsLabel: 'wave shape',
                                    color: kShadowColor,
                                    height: 110,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12.0,
                                    horizontal: 18.0,
                                  ),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: kPrimaryColor,
                                        child: Image.asset(
                                          'assets/images/engine-oil.png',
                                          height: 25,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      SizedBox(
                                        width: deviceWidth * .40,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Service My Car',
                                              style: kTitleTextStyle,
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              'Car details: Service My Car hello my car(G-1288)',
                                              style: kSubtitleTextStyle,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Date of services: 03 January, 2022',
                                              style: kSubtitleTextStyle,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      const Text(
                                        'Driver on the\nway to pick up',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: kGreenColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
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
