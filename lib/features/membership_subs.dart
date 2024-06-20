import 'package:flutter/material.dart';
import 'package:interview/common/colors.dart';
import 'package:interview/widgets/line_chart.dart';
import 'package:interview/widgets/small_card_withoutButton.dart';

class MembershipSubs extends StatelessWidget {
  const MembershipSubs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Membership & Subscriptions',
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Smallcardwithoutbtn(
                                  buttonColor: darkbuttonColor,
                                  follower: "\$ 120",
                                  name: "Membership",
                                  isUp: true,
                                  fluctuation: 12,
                                ),
                                SizedBox(width: 10),
                                Smallcardwithoutbtn(
                                  name: "Subscriptions",
                                  follower: "\$ 55",
                                  isUp: false,
                                  buttonColor: darkbuttonColor,
                                  fluctuation: 5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Weekly',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                decorationColor: buttonColor,
                                decorationThickness: 2),
                          ),
                          const Text(
                            'Monthly',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                decorationColor: buttonColor,
                                decorationThickness: 2),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 3),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: buttonColor, width: 2))),
                            child: const Text(
                              'Yearly',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  //decoration: TextDecoration.underline,
                                  decorationColor: buttonColor,
                                  shadows: [Shadow(offset: Offset(0, -5))],
                                  decorationThickness: 2),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 8,
                                    width: 8,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: lightblue),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Memberships",
                                    style: TextStyle(
                                        fontSize: 10, color: whiteColor),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 8,
                                    width: 8,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: buttonColor),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Subscriptions",
                                    style: TextStyle(
                                        fontSize: 10, color: whiteColor),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const ChartGraph()
                    ],
                  ),
                );
  }
}