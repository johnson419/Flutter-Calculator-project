import 'package:math_expressions/math_expressions.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = '';
  var answer = '0';

  void equalPressed(dynamic ans) {
    print(answer);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.black,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white24,
                padding: const EdgeInsets.only(
                  left: 0,
                  right: 0,
                  bottom: 5,
                  top: 30,
                ),
                margin: const EdgeInsets.only(
                  top: 0,
                ),
                width: 420,
                height: 700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[300],
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput = '';
                              answer = '0';
                            });
                          },
                          child: const Text(
                            'C',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ), //clear button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[300],
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '()';
                            });
                          },
                          child: const Text(
                            '()',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue[300],
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '%';
                            });
                          },
                          child: const Text(
                            '%',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                            });
                          },
                          child: const Text(
                            'DEL',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += "7";
                            });
                          },
                          child: const Text(
                            '7',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '8';
                            });
                          },
                          child: const Text(
                            '8',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '9';
                            });
                          },
                          child: const Text(
                            '9',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '/';
                            });
                          },
                          child: const Text(
                            '/',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '4';
                            });
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '5';
                            });
                          },
                          child: const Text(
                            '5',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '6';
                            });
                          },
                          child: const Text(
                            '6',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '*';
                            });
                          },
                          child: const Text(
                            '*',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '1';
                            });
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '2';
                            });
                          },
                          child: const Text(
                            '2',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '3';
                            });
                          },
                          child: const Text(
                            '3',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '-';
                            });
                          },
                          child: const Text(
                            '-',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '0';
                            });
                          },
                          child: const Text(
                            '0',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            setState(() {
                              userInput += '.';
                            });
                          },
                          child: const Text(
                            '.',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange.shade600,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            Parser parser = Parser();
                            ContextModel ctx = ContextModel();
                            Expression answer1 = parser.parse(userInput);
                            double ans =
                                answer1.evaluate(EvaluationType.REAL, ctx);
                            
                            setState(() {
                              answer = ans.toString();
                              userInput = "";
                            });
                          },
                          child: const Text(
                            '=',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent,
                            minimumSize: const Size(100, 50),
                            // padding: const EdgeInsets.all(0.1),
                          ),
                          onPressed: () {
                            userInput += '+';
                          },
                          child: const Text(
                            '+',
                            style: TextStyle(
                              fontSize: 28,
                            ),
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
    );
  }
}
