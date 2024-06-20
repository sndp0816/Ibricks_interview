import 'package:flutter/material.dart';
import 'package:interview/common/colors.dart';
import 'package:interview/screen/admin_two.dart';
import 'package:interview/widgets/small_card.dart';

class CommunityAnalytics extends StatelessWidget {
  const CommunityAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: background,
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntrinsicHeight(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Community Analytics ',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PageTwo()));
                        },
                        child: SmallCard(
                          name: 'Total Followers',
                          follower: '50k',
                          buttonColor: buttonColor,
                          isUp: true,
                          fluctuation: 23,
                        ),
                      ),
                      SmallCard(
                        name: "Total Views",
                        isUp: true,
                        buttonColor: darkbuttonColor,
                        follower: "200M",
                        fluctuation: 20,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SmallCard(
                        name: "Total Posts",
                        isUp: false,
                        follower: "17k",
                        buttonColor: darkbuttonColor,
                        fluctuation: 10,
                      ),
                      SmallCard(
                        name: "Total revenue",
                        isUp: false,
                        buttonColor: darkbuttonColor,
                        follower: '\$ 260',
                        fluctuation: 57,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
