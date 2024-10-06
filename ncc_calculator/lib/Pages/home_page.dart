import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:ncc_calculator/widgets/button_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String expression = '';
  String answer = '';
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(answer,style: const TextStyle(fontSize: 50),),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(expression,style: const TextStyle(fontSize: 50),),
              ),
              SizedBox(
                height: deviceHeight * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonWidgets(
                          buttonText: '7',
                          tap: () {
                           setState(() {
                             expression += '7';
                           });
                          },
                        ),
                        ButtonWidgets(
                          buttonText: '8',
                            tap: () {
                              setState(() {
                                expression += '8';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: '9',
                            tap: () {
                              setState(() {
                                expression += '9';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: 'X',
                          buttonTextColor: Colors.yellow,
                            tap: () {
                              setState(() {
                                expression += 'X';
                              });
                            }
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonWidgets(
                          buttonText: '4',
                            tap: () {
                              setState(() {
                                expression += '4';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: '5',
                            tap: () {
                              setState(() {
                                expression += '5';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: '6',
                            tap: () {
                              setState(() {
                                expression += '6';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: '-',
                          buttonTextColor: Colors.yellow,
                            tap: () {
                              setState(() {
                                expression += '-';
                              });
                            }
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonWidgets(
                          buttonText: '1',
                            tap: () {
                              setState(() {
                                expression += '1';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: '2',
                            tap: () {
                              setState(() {
                                expression += '2';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: '3',
                            tap: () {
                              setState(() {
                                expression += '3';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: '+',
                          buttonTextColor: Colors.yellow,
                            tap: () {
                              setState(() {
                                expression += '+';
                              });
                            }
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonWidgets(
                          buttonText: '0',
                            tap: () {
                              setState(() {
                                expression += '0';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: '/',
                          buttonTextColor: Colors.yellow,
                            tap: () {
                              setState(() {
                                expression += '/';
                              });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: 'CLR',
                          buttonTextColor: Colors.blue,
                            tap: () {
                            setState(() {
                              expression = '';
                            });
                            }
                        ),
                        ButtonWidgets(
                          buttonText: '=',
                            tap: () {
                            calculation();
                            }
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void calculation (){
    Parser p = Parser();
    expression =expression.replaceAll('X', '*');
    Expression ex = p.parse(expression);
    ContextModel cm =ContextModel();
    double ans = ex.evaluate(EvaluationType.REAL, cm);
    setState(() {
      answer = ans.toString();
    });
  }
}
