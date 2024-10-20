import 'package:flutter/material.dart';
import 'package:red_social_mensajeria_utn/constants.dart';
import 'package:red_social_mensajeria_utn/presentation/views/base_view.dart';

class SubjectsView extends StatelessWidget {
  const SubjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      customAppBar: buildAppBar(),
      body: Center(
        child: const Text(
            'Subjects Screen'), // El contenido específico de esta pantalla
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: const Text( "Asignaturas", style: TextStyle(color: Colors.white),
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
