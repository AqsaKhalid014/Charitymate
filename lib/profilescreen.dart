import 'package:flutter/material.dart';
import 'package:sahara_homepage/profilemorescreen.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('profile screen'),
            Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => profilemorescreen()));
                },
                icon: Icon(Icons.more_vert))
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
