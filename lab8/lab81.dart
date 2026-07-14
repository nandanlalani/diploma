import 'package:flutter/material.dart';



class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController expressionController = TextEditingController(text: "0");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"), centerTitle: true),
      body: Center(
        child: Container(
          height: 600,
          width: 340,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              TextField(
                controller: expressionController,
                readOnly: true,
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),

              SizedBox(height: 15),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(text: "AC", bgColor: Colors.grey.shade300),
                        button(text: "7"),
                        button(text: "4"),
                        button(text: "1"),
                        button(text: "00"),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(text: "B", bgColor: Colors.grey.shade300),
                        button(text: "8"),
                        button(text: "5"),
                        button(text: "2"),
                        button(text: "0"),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(text: "%", bgColor: Colors.grey.shade300),
                        button(text: "9"),
                        button(text: "6"),
                        button(text: "3"),
                        button(text: "."),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(text: "/", bgColor: Colors.orange.shade200),
                        button(text: "*", bgColor: Colors.orange.shade200),
                        button(text: "-", bgColor: Colors.orange.shade200),
                        button(text: "+", bgColor: Colors.orange.shade200),
                        button(text: "=", bgColor: Colors.blue.shade200),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget button({required String text, Color bgColor = Colors.white}) {
  return SizedBox(
    width: 70,
    height: 70,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
