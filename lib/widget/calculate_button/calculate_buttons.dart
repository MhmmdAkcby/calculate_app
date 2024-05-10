import 'package:calculator_app/product/project_size/project_size.dart';
import 'package:flutter/material.dart';

mixin CalculateButtonMixin {
  Widget callculateButton(BuildContext context, String btnTxt, Color btnColor, Color txtColor) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      child: ElevatedButton(
        onPressed: () {
          //TODO: add calculate method
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: btnColor,
          padding: ProjectPadding.standartPaddingx2,
        ),
        child: Text(
          btnTxt,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: ProjectSize().elevatedButtonTextSize,
                color: txtColor,
              ),
        ),
      ),
    );
  }
}
