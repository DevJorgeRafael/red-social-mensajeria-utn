import 'package:flutter/material.dart';
import 'package:red_social_mensajeria_utn/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 1,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (value) {
        onItemSelected(value);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.menu_book_sharp), label: "Asignaturas"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Comunidad"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "Historial"),
      ],
    );
  }
}
