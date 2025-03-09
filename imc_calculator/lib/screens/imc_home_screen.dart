import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';
import 'package:imc_calculator/screens/imc_result_screen.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 20;
  int selectedWeight = 80;
  double selectedHeight = 160;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(
          selectedHeight: selectedHeight,
          onHeightChange: (newHeight) {
            setState(() {
              selectedHeight = newHeight;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                  child: NumberSelector(
                title: "PESO",
                value: selectedWeight,
                onDecrement: () {
                  setState(() {
                    selectedWeight--;
                  });
                },
                onIncrement: () {
                  setState(() {
                    selectedWeight++;
                  });
                },
              )),
              SizedBox(width: 16),
              Expanded(
                  child: NumberSelector(
                title: "EDAD",
                value: selectedAge,
                onDecrement: () {
                  setState(() {
                    selectedAge--;
                  });
                },
                onIncrement: () {
                  setState(() {
                    selectedAge++;
                  });
                },
              ))
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImcResultScreen(
                                  height: selectedHeight,
                                  weight: selectedWeight,
                                )));
                  },
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      backgroundColor:
                          WidgetStateProperty.all(AppColors.primary)),
                  child: Text("Calcular", style: TextStyles.bodyText))),
        )
      ],
    );
  }
}
