import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/util/background_container.dart';
import 'package:bmi_calculator/util/card_data.dart';
import 'package:bmi_calculator/util/notiservice.dart';
import 'package:bmi_calculator/util/constants.dart';
import 'package:bmi_calculator/util/bottom_button.dart';
import 'package:bmi_calculator/util/button.dart';

// Assigning enum values for gender selection
enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int? chageweight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
              fontSize: 22,
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: kInactiveColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'BMI CALC',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile()
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: BackgroundContainer(
                    // using normal function
                    Touched: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    Mycolor: selectedGender == Gender.male
                        ? kActiveColor
                        : kInactiveColor,
                    child: MyCard(Myicon: Icons.male, text: 'Male'),
                  ),
                ),
                Expanded(
                  child: BackgroundContainer(
                    // using fat arrow
                    Touched: () =>
                        setState(() => selectedGender = Gender.female),
                    Mycolor: selectedGender == Gender.female
                        ? kActiveColor
                        : kInactiveColor,
                    child: MyCard(Myicon: Icons.female, text: 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BackgroundContainer(
              Touched: () => {},
              Mycolor: kActiveColor,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text('HEIGHT',
                            style: TextStyle(
                              color: kMyTextcolor,
                            )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(height.toString(),
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w600,
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                            )),
                        Text(' CM',
                            style: TextStyle(
                              color: kMyTextcolor,
                            ))
                      ],
                    ),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.white54,
                            thumbColor: kbuttonColor,
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 25.0)),
                        child: Slider(
                            min: 120,
                            max: 220,
                            value: height.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                height = value.toInt();
                              });
                            })),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: BackgroundContainer(
                    Touched: () {},
                    Mycolor: kActiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(color: kMyTextcolor),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              Weight.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Text(' KG',
                                style: TextStyle(
                                  color: kMyTextcolor,
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyButton(
                              icon: CupertinoIcons.minus,
                              pressed: () {
                                setState(() {
                                  Weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              icon: Icons.add,
                              pressed: () {
                                setState(() {
                                  Weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BackgroundContainer(
                    Touched: (){},
                    Mycolor: kActiveColor,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         const Text(
                          'AGE',
                          style: TextStyle(color: kMyTextcolor),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              age.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyButton(
                              icon: CupertinoIcons.minus,
                              pressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              icon: Icons.add,
                              pressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {

              Navigator.pushNamed(context, '/BMI');
              // MyNotifications().showNotification(
              //   id: 0,
              //   title: 'BMI Calculation',
              //   body: "Your BMI result is ready!",
              // );
            },
            child: BottomButton()),
        ],
      ),
    );
  }
}
