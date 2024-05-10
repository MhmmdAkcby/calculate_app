import 'package:calculator_app/widget/calculate_button/calculate_button_widget.dart';
import 'package:calculator_app/widget/calculate_main_text_container.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          CalculateMainContainerTextShow(),
          CalculateButtonWidget(),
        ],
      ),
    );
  }
}
