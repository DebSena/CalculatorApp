import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/constants/colors.dart';
import 'package:untitled/provider/cal_provider.dart';
import 'package:untitled/widgets/buttons.dart';
import '../widgets/buttonlist.dart';
// import '../widgets/buttons.dart';
import '../widgets/textfield.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key,});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding=EdgeInsets.symmetric(vertical: 25,horizontal: 30);
    return Consumer<CalculatorProvider>(
      builder: (context,provider,_) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(title: const Center(child: Text("Calculator App")
          ),
            backgroundColor: Colors.black,),
          body: Column(
            children: [
              CustomTextField(
                controller:provider.compController,
              ),
              Spacer(),
              Container(
                height: screenHeight * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: const BoxDecoration(
                  color: CalcColor.secondaryColor2,
                  borderRadius: BorderRadius.all(Radius.circular(42)),
                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:List.generate(4, (index) => buttonList[index]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:List.generate(4, (index) => buttonList[index+4]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:List.generate(4, (index) => buttonList[index+8]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:List.generate(4, (index) => buttonList[index+12]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[Button1(label: "."),Button1(label: "0"),EqualToButton()],

                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}





