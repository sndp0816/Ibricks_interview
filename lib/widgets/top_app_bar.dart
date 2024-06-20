import 'package:flutter/material.dart';
import 'package:interview/common/colors.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Column(
        children: [
          Container(
            color: background,
            child: Row(
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/img/menu.png',
                    color: Colors.white,
                    width: 32,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 12),
                const Text(
                  "Admin Panel",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none),
                ),
                const Spacer(),
                IconButton(
                  icon: Image.asset(
                    'assets/img/profile.png',
                    //color: Colors.white,
                    width: 40,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
