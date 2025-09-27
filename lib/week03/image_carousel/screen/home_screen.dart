import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen>{
  final PageController pageController = PageController();

  @override
  void initState(){
    super.initState();

    Timer.periodic(
      Duration(seconds: 3),
      (timer){

        int? nextPage = pageController.page?.toInt();

        if(nextPage == null) {
          return;
        }
        if(nextPage == 4){
          nextPage = 0;
        }else {
          nextPage++;
        }
        pageController.animateToPage(page, dur curve: curve)
      }
    )
  }
}