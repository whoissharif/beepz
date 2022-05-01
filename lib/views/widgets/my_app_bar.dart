import 'package:beepz/constants/string_constants.dart';
import 'package:beepz/constants/urls.dart';
import 'package:flutter/material.dart';

import '../../constants/style_constants.dart';
import 'menu_icon.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const MenuIcon(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  Urls.logo,
                  height: 40,
                ),
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
    );
  }
}
