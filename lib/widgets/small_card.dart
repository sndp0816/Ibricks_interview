import 'package:flutter/material.dart';
import 'package:interview/common/colors.dart';

class SmallCard extends StatelessWidget {
  final String name;
  final String follower;
  final Color buttonColor;
  final bool isUp;
  final double fluctuation;

  SmallCard({
    super.key,
    required this.name,
    required this.follower,
    required this.buttonColor,
    required this.fluctuation,
    required this.isUp,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: whiteColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Row(
                        children: [
                          displayIconOrImage(isUp),
                          Text(
                            isUp
                                ? '+${fluctuation.toString()}%'
                                : "-${fluctuation.toString()}%",
                            style: TextStyle(
                              color: isUp ? Colors.green : Colors.red,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "$follower",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: whiteColor,
                          decoration: TextDecoration.none,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: buttonColor,
                ),
                child:
                    const Icon(Icons.keyboard_arrow_right, color: whiteColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget displayIconOrImage(bool isUp) {
  return isUp
      ? Image.asset(
          "assets/img/up.png",
          width: 24.0, // specify width if needed
          height: 24.0, // specify height if needed
        )
      : Image.asset(
          'assets/img/down.png',
          width: 24,
          height: 24,
          color: Colors.red,
        );
}
