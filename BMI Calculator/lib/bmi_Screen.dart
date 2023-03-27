// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:math';

import 'package:app1/bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bmiScreen extends StatefulWidget {
 


  @override
  State<bmiScreen> createState() => _bmiScreenState();
}

class _bmiScreenState extends State<bmiScreen> {
    bool isMale=true;
    double heightSlider=120.0;
    int weight=40, age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/male.png'),
                            height: 70.0,
                            width: 70.0,
                            ),
                            SizedBox(height:5.0),
                            Text("MALE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)
                          ],
                        ),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:isMale ? Colors.blue : Colors.grey[400]),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                   Expanded(
                     child: Container(
                       child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale=false;
                          });
                        },
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image(image: AssetImage('assets/images/female.png'),
                            height: 70.0,
                            width: 70.0,
                            ),
                             SizedBox(height:5.0),
                             Text("FEMALE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)
                           ],
                         ),
                       ),
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:!isMale ? Colors.blue : Colors.grey[400]),
                     ),
                   ),
                ],
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("HEIGHT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("${heightSlider.round()}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 70.0),),
                      SizedBox(width: 7.0,),
                      Text("CM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                    
                    ],
                    
                  ),
                  Slider(
                      value:heightSlider,
                      max: 220.0,
                      min: 80.0 ,
                    onChanged: (value){
                      setState(() {
                        heightSlider=value;
                      });
                    }
                    ),
                  ],

                ),
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("AGE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                          Text("${age}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 70.0),),
                          Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(Icons.remove),
                              mini: true,
                              ),
                              SizedBox(width: 15.0,),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add),
                              mini: true,
                              ),
                            ],
                          )
                        ],
                      ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.grey[400]),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("WEIGHT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                          Text("${weight}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 70.0),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(Icons.remove),
                              mini: true,
                              ),
                              SizedBox(width: 15.0,),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(Icons.add),
                              mini: true,
                              ),
                            ],
                          )
                        ],
                      ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.grey[400]),
                    ),
                  ),
                ],
              ),
            )
          ),
          Container(
              color: Colors.blue,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  double res=weight/pow(heightSlider/100, 2);
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>bmiResult(
                    age: age,
                    ismale: isMale,
                    res:res.round() ,
                  ),),
                  );
                },
                height: 50.0,
                child: Text(
                  "CALCULATE",
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
