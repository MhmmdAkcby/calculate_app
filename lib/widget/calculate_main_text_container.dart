import 'package:calculator_app/product/project_size/project_size.dart';
import 'package:flutter/material.dart';

class CalculateMainContainerTextShow extends StatefulWidget {
  const CalculateMainContainerTextShow({super.key});

  @override
  State<CalculateMainContainerTextShow> createState() => _CalculateMainContainerTextShowState();
}

class _CalculateMainContainerTextShowState extends State<CalculateMainContainerTextShow> {
  String text = '0';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: ProjectPadding.conatinerSymertricPadding,
      height: ProjectSize().containerSize,
      width: MediaQuery.of(context).size.width,
      child: Text(
        textAlign: TextAlign.right,
        text,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontSize: ProjectSize().textFontSizeInContainer,
            ),
      ),
    );
  }
}
