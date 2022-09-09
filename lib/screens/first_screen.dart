import 'package:flutter/material.dart';
class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.cyan,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.pinkAccent,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.deepPurple,
                height: 100,
                width: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.cyan,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.pinkAccent,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.deepPurple,
                height: 100,
                width: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.cyan,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.pinkAccent,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.deepPurple,
                height: 100,
                width: 100,
              ),
            ],
          ),


        ],
      ),
    );
  }
}

