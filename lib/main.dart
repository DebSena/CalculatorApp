

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/cal_provider.dart';
import 'package:untitled/screens/home_screen.dart';

void main(){
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget{
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const HomeScreen(),
      ),
    );
  }
}

