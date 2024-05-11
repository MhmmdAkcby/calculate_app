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
                alignment: Alignment.bottomRight,
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: ProjectSize().containerFontSize,
                        fontWeight: FontWeight.w300,
                      ),
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
                itemCount: list.buttons.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: ButtonWidget(
                      color: isOperator(list.buttons[index]) ? ProjectColor.amberColor : ProjectColor.blackColor,
                      textColor: ProjectColor.whiteColor,
                      buttonText: list.buttons[index],
                      onTap: () {
                        setState(() {
                          text += list.buttons[index];
                        });
                        final btnText = list.buttons[index];
                        calculation(btnText);
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
