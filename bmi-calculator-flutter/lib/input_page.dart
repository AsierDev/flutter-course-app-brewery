import 'package:flutter/material.dart';

const activeCardColor =  Color(0xFF1D1E33);
const buttonColor =  Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Cards(color: activeCardColor),
                ),
                Expanded(
                  child: Cards(color: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Cards(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Cards(color: activeCardColor),
                ),
                Expanded(
                  child: Cards(color: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: buttonColor,
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

class Cards extends StatelessWidget {
  Cards({@required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

