import 'package:flutter/material.dart';

class Lab152 extends StatefulWidget {
  const Lab152({super.key});

  @override
  State<Lab152> createState() => _Lab152State();
}

class _Lab152State extends State<Lab152> {
  String page = "Home Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation drawer"),),
      body: Center(child: Text(page,style: TextStyle(fontSize: 50),),),
      drawer: NavigationDrawer(
        children: [
          DrawerHeader(child: Column(
            children: [
              Icon(Icons.home,size: 50,),
              ListTile(
                title: Text("Home page"),
                onTap: () {
                  setState(() {
                    page = "Home Page";
                  });
                },
              ),
            ],
          )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Users"),onTap: () {
            setState(() {
              page = "About Us";
            });
          },),
          ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("About Us"),onTap: () {
            setState(() {
              page = "Contact Us";
            });
          },),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),onTap: () {
            setState(() {
              page = "Settings";
            });
          },),

        ],
      ),
    );
  }
}
