import 'package:calculator_app/product/project_size/project_size.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final color;
  final textColor;
  final buttonText;
  final onTap;

  const ButtonWidget({super.key, this.color, this.textColor, this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(ProjectSize().borderRadius),
      onTap: onTap,
      child: Padding(
        padding: ProjectPadding.standartPadding,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(ProjectSize().borderRadius),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
