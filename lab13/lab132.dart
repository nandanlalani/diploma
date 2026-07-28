import 'package:flutter/material.dart';

class Lab132 extends StatelessWidget {
  Lab132({super.key});
  final List<Map<String, String>> photos = [
    {
      'image':
          'https://tse1.mm.bing.net/th?id=OIP.8lNNyTCZfpHmtV97MqjPogHaLB&pid=Api&P=0&h=180',
    },
    {
      'image':
          'https://tse3.mm.bing.net/th?id=OIP.Fogg7lhcOpS2p5U7VdLzYwHaK0&pid=Api&P=0&h=180',
    },
    {
      'image':
          'https://tse4.mm.bing.net/th?id=OIP.0Q9s297niPwxwgCjJzNTVwHaJq&pid=Api&P=0&h=180',
    },
    {
      'image':
          'https://tse2.mm.bing.net/th?id=OIP.AaRo4XJFIg3_DOn5n6H5-AHaEK&pid=Api&P=0&h=180',
    },
    {
      'image':
          'https://tse1.mm.bing.net/th?id=OIP.pcR7GBsXf_j2wto91k66PAHaLH&pid=Api&P=0&h=180',
    },
    {
      'image':
          'https://tse4.mm.bing.net/th?id=OIP.gyTGLUWcbSAy1ImEqRKUpgHaHa&pid=Api&P=0&h=180',
    },
    {
      'image':
          'https://tse4.mm.bing.net/th?id=OIP.FFqs16GR4dHKGpff-dXViwHaE8&pid=Api&P=0&h=180',
    },
    {
      'image':
          'https://tse2.mm.bing.net/th?id=OIP.qmMmMz4FO8yOryaLpOL0FAHaLH&pid=Api&P=0&h=180',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Photo Gallery')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: photos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            final photo = photos[index];
            return InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("The photo clicked ${index + 1}")),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(photo['image']!, fit: BoxFit.cover),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
