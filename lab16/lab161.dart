import 'package:dipflutter/lab4/column_demo.dart';
import 'package:flutter/material.dart';

class Lab161 extends StatelessWidget {
  const Lab161({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigtion Demo")),
      body: Center(
        child: Column(
          children: [
            Text("Page 1", style: TextStyle(fontSize: 50)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColumnDemo()),
                );
              },
              child: Text("Navigate"),
            ),
          ],
        ),
      ),
    );
  }
}
