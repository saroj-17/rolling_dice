import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"dice App",
    home:HomePages(),
  ));
}

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int diceNumber = 1;

  void changeDice(){
    setState(()
    {
      diceNumber =Random().nextInt(6)+1;

    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column
      (children: [
        SizedBox(height:10),
        Center(child: Image.asset("assets/$diceNumber.png",height:250,width:250)),
        MaterialButton(
        onPressed:changeDice,
        color: Colors.blue,
        child: Text("Roll",style: TextStyle(color:Colors.white),)),

      ],),
    );
  }
}
