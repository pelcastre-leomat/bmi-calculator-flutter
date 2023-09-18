import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ],
              )
          ),
          Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor
                    ),
                  ),
                ],

              )
          ),
          Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: activeCardColor
                    ),
                  ),
                ],
              )
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      )
    );
  }
}
