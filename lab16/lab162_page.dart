import 'package:flutter/material.dart';

class Lab162Page extends StatelessWidget {
  String? data;

  Lab162Page({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Page 2",style: TextStyle(fontSize: 50),),
            Text("Data reveived: $data",style: TextStyle(fontSize: 50),),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
