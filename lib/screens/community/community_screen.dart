import 'package:flutter/material.dart';
import 'package:red_social_mensajeria_utn/constants.dart';
import 'package:red_social_mensajeria_utn/screens/components/base_screen.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      customAppBar: buildAppBar(),
      body: const Center(
        child: Text('Community Screen'),
      ),
      selectedIndex: 2,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: const Text("Comunidad"),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}