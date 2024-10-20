import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseView extends StatelessWidget {
  AppBar customAppBar;
  Widget body;

  BaseView({
    super.key,
    required this.customAppBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar,
      body: body,
    );
  }
}