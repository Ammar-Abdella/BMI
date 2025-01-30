import 'package:flutter/material.dart';
import 'package:bmi_calculator/util/background_container.dart';
import 'package:bmi_calculator/util/card_data.dart';
import 'package:bmi_calculator/util/notiservice.dart';

// assigning enum values for the chage color function
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
  static const bootomheight = 80.0;
  static const Color base_color = Color(0xFF1D1E33);
  static const Color inactive_color = Colors.blue;
  static const Color button_color = Color(0xFFEB1555);

  Color maleCardColor = inactive_color;
  Color femaleCardColor = inactive_color;

  void changeColor(Gender gender) {
    if (gender == Gender.male) {
      maleCardColor = base_color;
      femaleCardColor = inactive_color;
    } else if (gender == Gender.female) {
      femaleCardColor = base_color;
      maleCardColor = inactive_color;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeColor(Gender.male);
                      });
                    },
                    child: BackgroundContainer(
                        Mycolor: maleCardColor,
                        child: MyCard(Myicon: Icons.male, text: 'Male')),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changeColor(Gender.female);
                      });
                    },
                    child: BackgroundContainer(
                        Mycolor: femaleCardColor,
                        child: MyCard(
                          Myicon: Icons.female,
                          text: 'Female',
                        )),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: BackgroundContainer(
              Mycolor: base_color,
            ),
          ),
          const Flexible(
            child: Row(
              children: [
                Expanded(
                  child: BackgroundContainer(
                    Mycolor: base_color,
                  ),
                ),
                Expanded(
                  child: BackgroundContainer(
                    Mycolor: base_color,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              MyNotifications().showNotification(id: 0, title: 'oh Men', body: "hell No!!,you'r fat ass negga");
            },
            child: Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bootomheight,
                child: Container(
                  color: button_color,
                  child: Center(
                    child: Text(
                      'Calculate Your BMI',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
