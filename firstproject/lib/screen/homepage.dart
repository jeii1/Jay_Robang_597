

import 'package:firstproject/utils/export.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
    //Hold initstate
    String title = 'Homepage';
    int counter = 0;
    TextEditingController number1 = TextEditingController();
    TextEditingController number2 = TextEditingController();
    double total = 0;

    @override
  void initState() {
    title = 'Welcome To My Homepage';
    number1.text ="0";
    number2.text ="0";
    super.initState();
  }

  void handlebuttonclick(){
    counter += 1;
  }

  void handleAddition(){
    setState(() {
      total = double.parse(number1.text) + double.parse(number2.text);
    });
  }
// if always a function = handle
//boolean function
//void ishandlebuttonclick

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text(title)),
            Center(child: Text('$counter')),
            ElevatedButton(onPressed: (){
                handlebuttonclick();
            }, child: Text("Increase Counter")),
            SizedBox( height: 10),
            TextField(controller: number1,),
            SizedBox(height: 10),
            TextField(controller: number2,),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {handleAddition();}, child: Text("Add Number")),
            SizedBox(height: 10),
            Text('Total: $total'),
          ],
        ),
    );
  }
}