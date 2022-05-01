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
      padding: const EdgeInsets.all(30.0),
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
    );
  }
}
