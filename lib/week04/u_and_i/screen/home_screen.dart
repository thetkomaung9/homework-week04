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
  
}