import 'package:flutter/material.dart';
import 'package:red_social_mensajeria_utn/constants.dart';
import 'package:red_social_mensajeria_utn/screens/components/base_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      customAppBar: buildAppBar(),
      body: const Center(
        child: Text('History Screen'),
      ),
      selectedIndex: 3,

    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: const Text("History"),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}