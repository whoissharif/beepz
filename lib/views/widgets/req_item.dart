import 'package:beepz/constants/string_constants.dart';
import 'package:beepz/constants/urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../constants/color_constants.dart';
import '../../constants/style_constants.dart';
import '../../controllers/request_controller.dart';

class ReqItem extends StatelessWidget {
  const ReqItem({
    Key? key,
    required this.requestController,
    required this.index,
  }) : super(key: key);

  final RequestController requestController;
  final int index;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
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
              Urls.waveSvg,
              semanticsLabel: 'wave shape',
              color: kShadowColor,
              height: 110,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 10.0,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  child: Image.asset(
                    Urls.engineOil,
                    height: 22,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: deviceWidth * .40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        StringConstants.serviceMyCar,
                        style: kTitleTextStyle,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      index == 0
                          ? Text(
                              StringConstants.carDetails +
                                  '${requestController.request[index].car!.vehicleModel!.modelName} ',
                              style: kSubtitleTextStyle,
                            )
                          : Text(
                              StringConstants.carDetails +
                                  '${requestController.request[index].car!.vehicleNickName} ${requestController.request[index].car!.vehicleModel!.modelName} (${requestController.request[index].car!.plateNumber})',
                              style: kSubtitleTextStyle,
                            ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        StringConstants.dateOfServices +
                            DateFormat.yMMMd().format(
                              DateFormat("yyyy-MM-dd").parse(
                                  '${requestController.request[index].customer!.createdAt}'),
                            ),
                        style: kSubtitleTextStyle,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Text(
                  StringConstants.driverStatus,
                  textAlign: TextAlign.right,
                  style: kDriverStatusTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
