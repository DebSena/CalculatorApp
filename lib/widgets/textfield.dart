import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
      child: TextField(controller:controller,style: TextStyle(fontSize:50),
        decoration: InputDecoration(border: InputBorder.none , fillColor: CalcColor.primaryColor, filled: true,),
        readOnly: true,
        autofocus: true,
      ),
    );
  }
}