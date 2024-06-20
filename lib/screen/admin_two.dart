import 'package:flutter/material.dart';
import 'package:interview/common/colors.dart';
import 'package:interview/features/milestone.dart';
import 'package:interview/widgets/top_app_bar.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: darkBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: TopAppBar(),
        ),
        body: Milestone());
  }
}
