import 'package:calculator_app/product/color/project_colors.dart';
import 'package:calculator_app/product/project_size/project_size.dart';
import 'package:calculator_app/widget/calculate_button/calculate_buttons.dart';
import 'package:flutter/material.dart';

class CalculateButtonWidget extends StatefulWidget {
  const CalculateButtonWidget({super.key});

  @override
  State<CalculateButtonWidget> createState() => _CalculateButtonWidgetState();
}

class _CalculateButtonWidgetState extends State<CalculateButtonWidget> with CalculateButtonMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            callculateButton(context, 'AC', ProjectColor.greyColor, ProjectColor.blackColor),
            callculateButton(context, '-/+', ProjectColor.greyColor, ProjectColor.blackColor),
            callculateButton(context, '%', ProjectColor.greyColor, ProjectColor.blackColor),
            callculateButton(context, '÷', ProjectColor.amberColor, ProjectColor.whiteColor),
          ],
        ),
        SizedBox(height: ProjectSize().sizedBoxHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            callculateButton(context, '7', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '8', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '9', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '×', ProjectColor.amberColor, ProjectColor.whiteColor),
          ],
        ),
        SizedBox(height: ProjectSize().sizedBoxHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            callculateButton(context, '4', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '5', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '6', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '-', ProjectColor.amberColor, ProjectColor.whiteColor),
          ],
        ),
        SizedBox(height: ProjectSize().sizedBoxHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            callculateButton(context, '1', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '2', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '3', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '+', ProjectColor.amberColor, ProjectColor.whiteColor),
          ],
        ),
        SizedBox(height: ProjectSize().sizedBoxHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const _ZeroButton(),
            callculateButton(context, '.', ProjectColor.blackColor, ProjectColor.whiteColor),
            callculateButton(context, '=', ProjectColor.amberColor, ProjectColor.whiteColor),
          ],
        )
      ],
    );
  }
}

class _ZeroButton extends StatelessWidget {
  const _ZeroButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //this is button Zero
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: ProjectPadding.zeroButtonPadding,
            backgroundColor: ProjectColor.blackColor,
            shape: const StadiumBorder(),
          ),
          onPressed: () {},
          child: Text(
            '0',
            style: TextStyle(
              fontSize: ProjectSize().elevatedButtonTextSize,
              color: ProjectColor.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
