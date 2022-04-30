import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 2,
          width: 10,
          color: Colors.white,
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 2,
          width: 20,
          color: Colors.white,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 2,
              width: 10,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}
