import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'results_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 170;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male ? kActiveCardColor: kInactiveCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female ? kActiveCardColor: kInactiveCardColor,
                      cardChild: const IconContent(
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
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                height.toString(),
                                style: kNumberTextStyle,
                              ),
                              const Text(
                                'cm',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackHeight: 1,
                              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                              overlayColor: Color(0x29EB1555),
                              thumbColor: Color(0xFFEB1555),
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Color(0xFF8D8E98),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120,
                              max: 220,
                              onChanged: (double newValue){
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      color: kActiveCardColor
                    ),
                  ),
                ],

              )
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                              )
                            ]
                          ),
                        ],
                      ),
                      color: kActiveCardColor
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                }
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  }
                              ),
                            ],
                          )
                        ],
                      ),
                      color: kActiveCardColor
                    ),
                  ),
                ],
              )
          ),
          GestureDetector(
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ResultsPage()),
              );
            },
            child: Container(
              child: Text(
                'Calculate'
              ),
              margin: const EdgeInsets.only(top: 10),
              color: kBottomContainerColor,
              height: kBottomContainerHeight,
              width: double.infinity,
            ),
          )
        ],
      )
    );
  }
}


class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key,required this.icon, required this.onPressed}) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

