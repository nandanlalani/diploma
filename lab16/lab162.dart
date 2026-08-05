import 'package:dipflutter/lab16/lab162_page.dart';
import 'package:flutter/material.dart';

class Lab162 extends StatelessWidget {
  Lab162({super.key});

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Passing through Navigator")),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lab162Page(data: _controller.text),
                  ),
                );
              },
              child: Text("Pass Data"),
            ),
          ],
        ),
      ),
    );
  }
}
