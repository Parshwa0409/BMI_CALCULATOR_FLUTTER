// ignore_for_file: file_names, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'Colors.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.result,
      required this.value,
      required this.recommendation})
      : super(key: key);

  //values
  final String result;
  final double value;
  final String recommendation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        backgroundColor: kAppBarColor,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: const Text(
                      'BMI RESULT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: kCardsColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          result,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SleekCircularSlider(
                          min: -1,
                          // max: 80.0,
                          /*
                          to change as as we move the slider
                          onChange: (newValue) {
                            setState(() {
                              value = newValue.toInt();
                              print(newValue);
                            });
                          },
                          */
                          initialValue: value,
                          //appearance
                          appearance: CircularSliderAppearance(
                            startAngle: 150,
                            angleRange: 240,
                            size: 250,

                            //animation, if duration multiplier is more the animation is slow
                            animDurationMultiplier: 2.5,
                            customWidths: CustomSliderWidths(
                              trackWidth: 2.0,
                              progressBarWidth: 8.0,
                              handlerSize: 0,
                            ),
                            customColors: CustomSliderColors(
                              dotColor: Colors.transparent,
                              trackColor: Colors.white,
                              progressBarColor: kActiveColor,
                              shadowColor: kOverlayActiveColor,
                              gradientStartAngle: 150,
                              gradientEndAngle: 390,
                            ),
                            infoProperties: InfoProperties(
                                mainLabelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 56,
                                  fontWeight: FontWeight.w600,
                                ),
                                modifier: (sliderValue) {
                                  return value.toStringAsFixed(1);
                                }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            recommendation,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(color: kActiveColor),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Center(
                    child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
