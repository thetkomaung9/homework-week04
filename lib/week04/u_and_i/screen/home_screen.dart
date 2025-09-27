import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  DateTime firstDay = DateTime.now();

  void onHearPressed(){
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context){
        
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 300,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime date) {
                setState((){
                  firstDay = date;
                });
              },
            ),
          ),
        );
         
      },
      barrierDismissible: true,
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        top: true,
        bottom: Column(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _DDay(
                onHeartPressed: onHeartPressed,
                firstDay: firstDay,
              ),
              _CoupleImage(),
            ],
          ),
        ),
      );
  }
}
class _DDay extends StatelessWidget{
  final GestureTapCallback onHearPressed;
  final DateTime firstDay;

  _DDay({

    required this.onHearPressed,
    required this.firstDay,
  });
  @override
  Widget build(BuildContext context){
    final TextTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          'U&I',
          style: textTheme.headlineLarge,
        ),
        const SizedBox(height: 16.0),
        Text(
          '우리 처음 만'
        )
      ],
    )
  }
}