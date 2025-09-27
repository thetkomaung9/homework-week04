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
    showCupertinoDialog(contex, builder: builder)
  }
}