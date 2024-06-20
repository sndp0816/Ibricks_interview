import 'package:flutter/material.dart';
import 'package:interview/common/colors.dart';
import 'package:interview/widgets/large_card.dart';


class Milestone extends StatelessWidget {
  const Milestone({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: background,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Milestones ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Add your content here
                    const LargeCard(
                      coins: 50,
                      title: "7 Post 7 Week",
                      discription:
                          "Post each week for 7 weeks to maintain streak",
                      image: 'assets/img/heart.png',
                      imageBackground: heartbackground,
                      percentage: 50,
                    ),
                    const LargeCard(
                      coins: 100,
                      title: "7 Comment 7 Week",
                      discription:
                          "Comment each week for 7 weeks to maintain streak",
                      image: 'assets/img/heart.png',
                      imageBackground: Colors.cyan,
                      percentage: 30,
                    ),
                    const LargeCard(
                      coins: 10,
                      title: 'Update profile',
                      discription: 'Update your profile to 100%',
                      image: 'assets/img/heart.png',
                      imageBackground: Colors.purple,
                      percentage: 70,
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Go to leaderboard',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Add more widgets below if needed
          ],
        ),
      );
  }
}