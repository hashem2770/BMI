import 'package:bmi_task/main.dart';
import 'package:flutter/material.dart';

class BmiResults extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
   String message;
  BmiResults({this.result, this.isMale, this.age});
  void weightText() {
    if (result > 25) {
      message = 'Over Weight';
    } else if (result < 18) {
      message = 'Under Weight';
    } else {
      message = 'Normal';
    }
  }



  @override
  Widget build(BuildContext context) {
    weightText();
    return Scaffold(
      backgroundColor: Colors.purple[900],

      appBar: AppBar(
        backgroundColor: Colors.purple[900],

        title: Text('Bmi Result',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 35.0,color: Colors.white),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 30, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.purple),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        message,
                        style: TextStyle(fontSize: 30.0, color: Colors.white,fontWeight: FontWeight.w700,fontStyle: FontStyle.italic),
                      ),
                      Text(
                        result.toString(),
                        style: TextStyle(
                            fontSize: 60.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Normal : 18 - 25 ',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60.0,
              width: double.infinity,
              child: RaisedButton(
                child: Text(
                  'Re-Calculate'.toUpperCase(),
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
                color: Colors.pink,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
