import 'package:flutter/material.dart';

class Lab73 extends StatelessWidget {
  const Lab73({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Image asset"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 1000,
                width: 1000 ,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              Positioned(
                top: 40,
                  child: Icon(Icons.cake_rounded,size: 200,),

              ),


              Text("Happy Birthday",style: TextStyle(color: Colors.white,fontSize: 50),),

              Positioned(
                bottom: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(50),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset("assets/img/Ayustara - 75.jpg",scale: 5,)))
            ],
          ),
        ),
      ),
    );
  }
}
