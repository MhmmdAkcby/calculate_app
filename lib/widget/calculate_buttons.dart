import 'package:flutter/material.dart';

class CalculateButtons extends StatefulWidget {
  const CalculateButtons({super.key});

  @override
  State<CalculateButtons> createState() => _CalculateButtonsState();
}

class _CalculateButtonsState extends State<CalculateButtons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('data'),
    );
  }
}
