import 'package:flutter/material.dart';

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
