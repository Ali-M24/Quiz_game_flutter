import 'package:flutter/material.dart';

class SocrePage extends StatelessWidget {
  SocrePage({super.key, this.correctAnswer = 0});
  var correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "نتیجه آزمون",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('assets/images/cup.png'),
              ),
            ),
            SizedBox(height: 32.0),
            Text(
              'پاسخ های صحیح',
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '$correctAnswer',
              style: TextStyle(
                fontSize: 64.0,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
