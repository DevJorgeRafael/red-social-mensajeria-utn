import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:red_social_mensajeria_utn/screens/components/custom_bottom_navigation_bar.dart';

class BaseScreen extends StatefulWidget {
  final Widget body;
  final int selectedIndex; // Para saber qué pestaña está seleccionada
  final AppBar customAppBar;

  const BaseScreen({
    super.key,
    required this.body,
    required this.selectedIndex, 
    required this.customAppBar,
  });

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.customAppBar,
      body: widget.body, // Aquí se pasa el contenido dinámico de cada pantalla
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: widget.selectedIndex,
        onItemSelected: (index) {
          // Navegación entre pantallas según el índice seleccionado
          if (index == 0) {
            context.push('/chats');
          } else if (index == 1) {
            context.push('/subjects');
          } else if (index == 2) {
            context.push('/community');
          } else if (index == 3) {
            context.push('/history');
          }
        },
      ),
    );
  }
}
