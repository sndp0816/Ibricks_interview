// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:interview/common/colors.dart';

class LargeCard extends StatelessWidget {
  final String image;
  final Color imageBackground;
  final String title;
  final String discription;
  final int coins;
  final double percentage;

  const LargeCard({
    super.key,
    required this.image,
    required this.imageBackground,
    required this.title,
    required this.discription,
    required this.coins,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    coins.toString(),
                    style: const TextStyle(
                      color: whiteColor,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 12, left: 12, bottom: 12),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: imageBackground,
                    ),
                    child: Image.asset(
                      image,
                      //color: Colors.blue,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              discription,
                              softWrap: true,
                              style: const TextStyle(
                                color: whiteColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 10.0,
                  //trackShape: RoundedRectSliderTrackShape(),
                  activeTrackColor: buttonColor,
                  //allowedInteraction: SliderInteraction.tapOnly,

                  inactiveTrackColor: background,
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 0.0,
                    pressedElevation: 0.0,
                  ),
                  thumbColor: buttonColor,
                  //overlayColor: pink.withOpacity(0.2),
                  overlayShape: const RoundSliderOverlayShape(overlayRadius: 0.0),
                  tickMarkShape: const RoundSliderTickMarkShape(),
                  activeTickMarkColor: darkbuttonColor,
                  inactiveTickMarkColor: buttonColor,
                  valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                  valueIndicatorColor: Colors.black,
                  valueIndicatorTextStyle: const TextStyle(
                    color: buttonColor,
                    fontSize: 20.0,
                  ),
                ),
                child: Slider(
                  min: 0.0,
                  max: 100.0,
                  value: percentage,
                  divisions: 10, onChanged: (double value) {},
                  //label: '${_value.round()}',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
