import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/cards.dart';
import '../widgets/card_content.dart';
import '../widgets/slider.dart';
import '../widgets/icon_content.dart';
import '../widgets/round_icon_button.dart';
import '../utils/constants.dart';

enum Gender { female, male }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = kInitialHeight;
  int weight = kInitialWeight;
  int age = kInitialAge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          // Gender Cards
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Cards(
                    onPress: () =>
                        setState(() => selectedGender = Gender.female),
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Cards(
                    onPress: () => setState(() => selectedGender = Gender.male),
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Height Card
          Expanded(
            child: Cards(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumbersTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  CustomSlider(
                    onChanged: (double newValue) =>
                        setState(() => height = newValue.toInt()),
                    value: height,
                  )
                ],
              ),
            ),
          ),
          // Weight and age Cards
          Expanded(
            child: Row(
              children: <Widget>[
                // Weight
                Expanded(
                  child: Cards(
                    color: kActiveCardColor,
                    cardChild: CardContent(
                      amount: weight,
                      text: 'Weight',
                      onAdd: () => setState(() => weight++),
                      onReduce: () => setState(() => weight--),
                    ),
                  ),
                ),
                // Age
                Expanded(
                  child: Cards(
                    color: kActiveCardColor,
                    cardChild: CardContent(
                      amount: age,
                      text: 'Age',
                      onAdd: () => setState(() => age++),
                      onReduce: () => setState(() => age--),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Calculate Button
          Container(
            margin: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: kButtonColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 80.0,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
