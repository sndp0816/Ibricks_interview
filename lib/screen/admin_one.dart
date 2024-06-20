import 'package:flutter/material.dart';
import 'package:interview/common/colors.dart';
import 'package:interview/features/community_analytics.dart';
import 'package:interview/features/membership_subs.dart';
import 'package:interview/widgets/top_app_bar.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackground,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: TopAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const CommunityAnalytics(),
              const SizedBox(height: 20),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: background,
                  ),
                  child: const MembershipSubs()),
            ],
          ),
        ),
      ),
    );
  }
}
