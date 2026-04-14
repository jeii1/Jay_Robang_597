import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  //initstate
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double total = 0; 

  @override
  void initState() {
    number1.text = "0";
    number2.text = "0";
    super.initState();
  }

  @override
  void dispose() {
    number1.dispose();
    number2.dispose();
    super.dispose();
  }

//Addition
  void handleAddition (){
    setState(() {
       total = double.parse(number1.text) + double.parse(number2.text);
    });
  }
//Subtraction
  void handleSubtraction(){
    setState(() {
       total = double.parse(number1.text) - double.parse(number2.text);
    });
  }
//Multiplication
  void handleMultiplication(){
    setState(() {
       total = double.parse(number1.text) * double.parse(number2.text);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          TextField(controller: number1),
          SizedBox(height: 10),
          TextField(controller: number2,),
          SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            handleAddition();
          }, child: Text("Add Number")
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            handleSubtraction();
          }, child: Text("Subtract Number")
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            handleMultiplication();
          }, child: Text("Multiply Number")
          ),
          SizedBox(height: 10,),
          Text('Total: $total'),
        ]
      ),
    );
  }
}