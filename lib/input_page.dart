import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContent.dart';
import 'reusableContainer.dart';
import 'constants.dart';
import 'roundedIconButton.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

Gender selectedGender;
int height = 180;
int weight = 75;
int age = 25;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableContainer(
                      tapOnIcon: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kGenderActiveColor
                          : kGenderInactiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.male,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableContainer(
                      tapOnIcon: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? kGenderActiveColor
                          : kGenderInactiveColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.female,
                        text: 'FEMALE',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ReusableContainer(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kBigLabelTextStyle,
                        ),
                        Text(
                          ' cm',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: kPinkColor,
                        overlayColor: kPinkColor.withAlpha(0x29),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.blueGrey,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 13.0,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 240.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ),
                color: kMainContainerColor,
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableContainer(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kBigLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundedIconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 10) {
                                        weight--;
                                      }
                                    });
                                  },
                                  color: Colors.blueGrey,
                                  icon: FontAwesomeIcons.minus),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedIconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight < 300) {
                                        weight++;
                                      }
                                    });
                                  },
                                  color: Colors.blueGrey,
                                  icon: FontAwesomeIcons.plus)
                            ],
                          )
                        ],
                      ),
                      color: kMainContainerColor,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableContainer(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kBigLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundedIconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 1) {
                                        age--;
                                      }
                                    });
                                  },
                                  color: Colors.blueGrey,
                                  icon: FontAwesomeIcons.minus),
                              SizedBox(
                                width: 10,
                              ),
                              RoundedIconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age < 100) {
                                        age++;
                                      }
                                    });
                                  },
                                  color: Colors.blueGrey,
                                  icon: FontAwesomeIcons.plus)
                            ],
                          )
                        ],
                      ),
                      color: kMainContainerColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: kPinkColor,
              width: double.infinity,
              height: kLowerBarHeight,
            )
          ],
        ));
  }
}
