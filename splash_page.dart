// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

import 'home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(context as BuildContext,
        MaterialPageRoute(builder: (context) => HomePage(title: 'GFG')));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(95),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'NSBM',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildSmallRectangle(
                            const Color.fromARGB(255, 182, 228, 182)),
                        _buildSmallRectangle(
                            const Color.fromARGB(255, 136, 225, 136)),
                        _buildSmallRectangle(
                            const Color.fromARGB(255, 89, 223, 89)),
                        _buildSmallRectangle(
                            const Color.fromARGB(255, 42, 216, 42)),
                        _buildSmallRectangle(
                            const Color.fromARGB(255, 2, 212, 2)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSmallRectangle(Color color) {
    return Container(
      width: 30,
      height: 30,
      color: color,
    );
  }
}
