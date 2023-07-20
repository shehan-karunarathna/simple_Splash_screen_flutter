import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.purple,
          width: 200,
          height: 150,
          child: const Padding(
            padding: EdgeInsets.all(32),
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
