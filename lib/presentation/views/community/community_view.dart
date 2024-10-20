import 'package:flutter/material.dart';
import 'package:red_social_mensajeria_utn/constants.dart';
import 'package:red_social_mensajeria_utn/presentation/views/base_view.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      customAppBar: buildAppBar(),
      body: const Center(
        child: Text('Community Screen'),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: const Text( "Comunidad", style: TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}