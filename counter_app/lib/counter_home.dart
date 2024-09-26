import 'package:counter_app/button.dart';
import 'package:flutter/material.dart';

class CounterHome extends StatefulWidget {
  const CounterHome({super.key});

  @override
  State<CounterHome> createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome> {

  int count =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(count.toString(),style: const TextStyle(fontSize: 50),)),
          InkWell(
            onTap: (){


              count++;


              setState(() {

              });

            },
            child: Button(buttonName: 'Add',),
          ),

          InkWell(
            onTap: (){


              count--;


              setState(() {

              });

            },
            child: Button(buttonName: 'minus',),
          ),
        ],
      ),
    );
  }
}
