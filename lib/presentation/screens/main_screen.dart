import 'package:flutter/material.dart';
import 'package:red_social_mensajeria_utn/presentation/screens/components/custom_bottom_navigation_bar.dart';
import 'package:red_social_mensajeria_utn/presentation/views/views.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final views = [
      ChatsView(),
      SubjectsView(),
      CommunityView(),
      HistoryView(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: views,
      ),

      bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: _selectedIndex, onItemSelected: _onItemSelected,),
    );
  }
}