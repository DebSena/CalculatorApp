
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/cal_provider.dart';

import '../constants/colors.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key,
    required this.label,
    this.textColor=Colors.white
  });
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Provider.of<CalculatorProvider>(context,listen: false).setValue(label);
      },
      child: Material(
        elevation: 3,
        color: CalcColor.secondaryColor2,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(radius: 39,child: Text(label ,style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 35,
          color: textColor,
        ),),backgroundColor: CalcColor.secondaryColor2,),
      ),
    );
  }
}

class EqualToButton extends StatelessWidget {
  const EqualToButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Provider.of<CalculatorProvider>(context,listen: false).setValue("=");
      },
      child: Container(
        width: 166,height: 70,
        child: Center(child: Text("=",style: TextStyle(fontWeight: FontWeight.w700,
            fontSize: 47,color: CalcColor.secondaryColor),)),
        decoration: BoxDecoration(color:CalcColor.secondaryColor2,
            borderRadius: BorderRadius.all(Radius.circular(50))
        ),

      ),
    );
  }
}
