// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'Colors.dart';
import 'ResultPage.dart';
import 'Age_Weight.dart';
import 'GenderWidgets.dart';
import 'Brain.dart';

enum GenderType { M, F, none }

GenderType selectedGender = GenderType.none;
double _value = 0;
int _weight = 0;
int _age = 0;

class UI_Page extends StatefulWidget {
  const UI_Page({Key? key}) : super(key: key);

  @override
  State<UI_Page> createState() => _UI_PageState();
}

class _UI_PageState extends State<UI_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          backgroundColor: kAppBarColor,
          title: const Text('BMI CALCULATOR'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 6.0, right: 6.0, top: 6.0, bottom: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.only(top: 4),
                    margin:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    decoration: BoxDecoration(
                        color: kCardsColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16),
                        Text(
                          'HEIGHT - ${_value.toInt()}cm',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 0),
                        Expanded(
                          flex: 1,
                          child: SfSliderTheme(
                            data: VerticalSliderTheme(),
                            child: VerticalSlider(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //HeightSlider
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: kCardsColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(
                                        () {
                                          selectedGender = GenderType.M;
                                        },
                                      );
                                    },
                                    child: GenderIcon(
                                      genderIcon: Icons.male,
                                      iconColor: Colors.white,
                                      bgColor: selectedGender == GenderType.M
                                          ? kActiveColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  const GenderText(
                                      text: 'MALE', textColor: Colors.white)
                                ],
                              ),
                              const SizedBox(width: 28),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(
                                        () {
                                          selectedGender = GenderType.F;
                                        },
                                      );
                                    },
                                    child: GenderIcon(
                                      genderIcon: Icons.female,
                                      iconColor: Colors.white,
                                      bgColor: selectedGender == GenderType.F
                                          ? kActiveColor
                                          : Colors.transparent,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  const GenderText(
                                    text: 'FEMALE',
                                    textColor: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ), //GenderSelector
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: kCardsColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              labelText(label: 'AGE'), //WEIGHT LABEL
                              const SizedBox(height: 12),
                              labelNumber(value: _age), //WEIGHT NUMBER TEXT
                              const SizedBox(height: 12),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _age > 0 ? _age-- : 0;
                                          });
                                        },
                                        child: P_M_Button(
                                            icon: FontAwesomeIcons.minus)),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _age++;
                                          });
                                        },
                                        child: P_M_Button(
                                            icon: FontAwesomeIcons.plus)),
                                  ],
                                ),
                              ) //PLUS-MINUS-ICONS
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: kCardsColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              labelText(label: 'WEIGHT'), //WEIGHT LABEL
                              const SizedBox(height: 12),
                              labelNumber(value: _weight), //WEIGHT NUMBER TEXT
                              const SizedBox(height: 12),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _weight > 0 ? _weight-- : 0;
                                          });
                                        },
                                        child: P_M_Button(
                                            icon: FontAwesomeIcons.minus)),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _weight++;
                                        });
                                      },
                                      child: P_M_Button(
                                          icon: FontAwesomeIcons.plus),
                                    ),
                                  ],
                                ),
                              ) //PLUS-MINUS-ICONS
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          var bmiValue;
                          Brain calc =
                              Brain(height: _value.toInt(), weight: _weight);
                          bmiValue = calc.calculate();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultPage(
                                  result: calc.category(bmiValue),
                                  value: bmiValue,
                                  recommendation:
                                      calc.recommendation(bmiValue)),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          margin: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 8),
                          decoration: BoxDecoration(
                            color: kActiveColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                              child: Text(
                            'CALCULATE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ) //CalculateButton
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  SfSlider VerticalSlider() {
    return SfSlider.vertical(
      min: 0.0,
      max: 250.0,
      value: _value,
      interval: 50,
      showTicks: true, //it's the major interval ticks
      //to show the label/number to the interval
      showLabels: true,
      //we can adjust where the labels are to be placed
      labelPlacement: LabelPlacement.onTicks,

      //dividers are like dots on every interval on the slider and is customizable
      // showDividers: true,
      //it too can be customized , like active-inactive,radius,color,strokeWidth etc

      //to display the minor-division/ticks we must specify how many inner/minor divisions must be present and its applied automatically
      minorTicksPerInterval: 4,

      //to show the value as we slide on the slider, we set enableToolTip to be true
      // enableTooltip: true,
      //we can set the shape of toolTip, default is RoundedRectangular
      // tooltipShape: SfPaddleTooltipShape(), paddleShape not applicable for vertical bar
      // tooltipPosition: SliderTooltipPosition.right, //to set the position relative to the Slider

      //the value of slider is double, we can change the number format or use stepSize , so that when we change the value it increases by interval = stepSize, if stepSize =1 , then all the values are multiple of 1, and we wont get any double value
      stepSize: 1,

      onChanged: (newValue) {
        setState(() {
          _value = newValue;
        });
      },
    );
  }

  SfSliderThemeData VerticalSliderTheme() {
    return SfSliderThemeData(
      /*
       to manage the thickness of the track
       activeTrackHeight: 8,
       inactiveTrackHeight: 3,
       */
      trackCornerRadius: 3,
      //we can give colors to the active & inactive major ticks
      //if value = 200 , then all the major/larger ticks or division before that are active and this color is applied to them
      activeTickColor: Colors.white,
      inactiveTickColor: Colors.white,
      activeMinorTickColor: Colors.white,
      inactiveMinorTickColor: Colors.white,
      inactiveTrackColor: Colors.white70,
      activeTrackColor: Colors.white,
      thumbColor: kActiveColor,
      overlayColor: kOverlayActiveColor,

      //widths, can be set using the height property
      inactiveTrackHeight: 2,
      activeTrackHeight: 5,

      //accessing the division size/ the tickSize
      tickSize: const Size(16.0, 1.25), //Size(width,height)
      minorTickSize: const Size(10.0, 0.75),

      //labels can be styled , and there are two labels active & inactive
      activeLabelStyle: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      inactiveLabelStyle: const TextStyle(
        color: Colors.white,
        fontSize: 11,
        fontWeight: FontWeight.w600,
      ),
      /*
         styling the toolTip and its label
         tooltipBackgroundColor: Colors.transparent,
         tooltipTextStyle: const TextStyle(
         color: Colors.black,
         fontSize: 12,
         fontWeight: FontWeight.bold,
        )
      */
    );
  }
}
