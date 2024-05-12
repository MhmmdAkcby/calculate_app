import 'package:calculator_app/product/color/project_colors.dart';
import 'package:calculator_app/product/project_size/project_size.dart';
import 'package:calculator_app/view/home_manage.dart';
import 'package:calculator_app/widget/button_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends HomeManage<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: ProjectMargin.marginSymmetricContainer,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        userQuestion,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: ProjectSize().containerFontSize,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                    SizedBox(height: ProjectSize().sizedBoxHeight),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        userAnswer,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: ProjectSize().containerFontSize2,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: ProjectSize().flexSize,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemCount: buttonList.buttons.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return ButtonWidget(
                      color: ProjectColor.greyColor,
                      textColor: ProjectColor.whiteColor,
                      buttonText: buttonList.buttons[index],
                      onTap: () {
                        setState(() {
                          userQuestion = '';
                          userAnswer = '0';
                        });
                      },
                    );
                  } else if (index == 1) {
                    return ButtonWidget(
                      color: ProjectColor.greyColor,
                      textColor: ProjectColor.whiteColor,
                      buttonText: buttonList.buttons[index],
                      onTap: () {
                        setState(() {
                          userQuestion = userQuestion.substring(0, userQuestion.length - 1);
                        });
                      },
                    );
                  } else if (index == buttonList.buttons.length - 1) {
                    return ButtonWidget(
                      color: ProjectColor.amberColor,
                      textColor: ProjectColor.whiteColor,
                      buttonText: buttonList.buttons[index],
                      onTap: () {
                        evaluateExpression();
                      },
                    );
                  } else if (index == buttonList.buttons.length - 2) {
                    return ButtonWidget(
                      color: ProjectColor.blackColor,
                      textColor: ProjectColor.whiteColor,
                      buttonText: buttonList.buttons[index],
                      onTap: () {
                        evaluateExpression();
                      },
                    );
                  }
                  return Center(
                    child: ButtonWidget(
                      color: isOperator(buttonList.buttons[index]) ? ProjectColor.amberColor : ProjectColor.blackColor,
                      textColor: ProjectColor.whiteColor,
                      buttonText: buttonList.buttons[index],
                      onTap: () {
                        setState(() {
                          userQuestion += buttonList.buttons[index];
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
