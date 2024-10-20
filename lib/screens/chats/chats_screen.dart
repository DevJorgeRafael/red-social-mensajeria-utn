import 'package:red_social_mensajeria_utn/screens/components/base_screen.dart';

import '../../constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      customAppBar: buildAppBar(),
      body: const Body(),
      selectedIndex: _selectedIndex,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: const Text("Chats"),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
