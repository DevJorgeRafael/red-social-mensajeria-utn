import 'package:flutter/material.dart';
import 'package:red_social_mensajeria_utn/constants.dart';
import 'package:red_social_mensajeria_utn/screens/components/base_screen.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      customAppBar: buildAppBar(),
      body: Center(
        child: const Text(
            'Subjects Screen'), // El contenido específico de esta pantalla
      ),
      selectedIndex: 1, 
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: const Text("Asignaturas"),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
