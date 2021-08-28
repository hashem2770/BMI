import 'dart:math';

import 'package:bmi_task/bmi_result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'BMI CALC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale= true;
  double height=150;
  int age=25;
  int weight = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.purple[700],
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color:isMale? Colors.purple[900]:Colors.purple,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.mars,
                                size: 100.0, color: Colors.white),
                            Text(
                              'Male',
                              style:
                                  TextStyle(fontSize: 24.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale? Colors.purple:Colors.purple[900],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.venus,
                                size: 100.0, color: Colors.white),
                            Text(
                              'Female',
                              style:
                                  TextStyle(fontSize: 24.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Height'.toUpperCase(),
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.round().toString(),
                          style: TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' cm',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 150,
                      max: 220,
                      onChanged: (value) {
                        setState(() {
                          height=value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'weight+',
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        if(weight==200){
                                          weight=200;
                                        }else {
                                          weight++;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                  SizedBox(width: 8.0),
                                  FloatingActionButton(
                                    heroTag: 'weight-',
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        if(weight==50){
                                          weight=50;
                                        }else {
                                          weight--;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'age+',
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        if(age == 100){
                                          age = 100;
                                        }else{
                                          age++;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                  SizedBox(width: 8.0),
                                  FloatingActionButton(
                                    heroTag: 'age-',
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        if(age == 1){
                                          age =1;
                                        }else{
                                          age--;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60.0,
            width: double.infinity,
            child: RaisedButton(
              child: Text(
                'Calculate'.toUpperCase(),
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
              color: Colors.pink,
              onPressed: () {
                setState(() {
                  var result = weight / pow(height/100,2);
                  print(result.round());
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> BmiResults(age: age,result: result.round(),isMale: isMale,)
                  ));
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
