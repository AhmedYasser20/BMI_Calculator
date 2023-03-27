import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bmiResult extends StatelessWidget {
  //const bmiResult({super.key});
  final bool ismale;
  final int res;
  final int age;
  bmiResult({
    required this.res,
    required this.age,
    required this.ismale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Result'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Text('Gender: ${ismale ? 'Male' : 'Female'}',style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
            Text('Result: ${res}',style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
            Text('Age: ${age}',style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 90.0,),
            Container(
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5.0)),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.white,
              )),
            )
          ],
        ),
      ) ,
    );
  }
}