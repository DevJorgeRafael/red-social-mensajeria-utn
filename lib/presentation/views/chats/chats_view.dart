import 'package:red_social_mensajeria_utn/presentation/views/base_view.dart';

import '../../../constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({super.key});

  @override
  State<ChatsView> createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {

  @override
  Widget build(BuildContext context) {
    return BaseView(
      customAppBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: const Text("Chats", style: TextStyle(color: Colors.white),),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
