import 'package:flutter/material.dart';
import 'package:bmi_calculator/util/background_container.dart';
import 'package:bmi_calculator/util/constants.dart';
import 'package:bmi_calculator/util/bottom_button.dart';
class CalculatedBmi extends StatelessWidget {
  const CalculatedBmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
                child: Column(
          children: [
            SizedBox(height: 10,),
            Text(
              'Your Result',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10,),
            Expanded(
                child: BackgroundContainer(
                  Mycolor: kActiveColor, Touched: () {},
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    Center(child: Text('NORMAL',style: TextStyle(color: Colors.green,fontSize: 20),)),
                    Center(child: Text("19.2",style: TextStyle(fontSize: 80.0,color: Colors.white,fontWeight: FontWeight.bold))),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Center(child: Text('You have a normal body weight Good Job !',style: TextStyle(color: Colors.white,fontSize: 18.0),)),
                    )
                  ],))),
                    GestureDetector(
            onTap: () {

              Navigator.pushNamed(context, '/');
              // MyNotifications().showNotification(
              //   id: 0,
              //   title: 'BMI Calculation',
              //   body: "Your BMI result is ready!",
              // );
            },
            child:BottomButton()),
        
          ],
                ),
              ),
        ));
  }
}
