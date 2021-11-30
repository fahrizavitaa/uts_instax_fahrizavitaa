import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uts_fahriza/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToDashboard();
  }

  goToDashboard() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(child: Image.asset('assets/fujifilm.png', height: 50)),
          const Spacer(),
          Center(
            child: RichText(
              text: const TextSpan(
                text: 'Made With ',
                style: TextStyle(color: Colors.black),
                children: <InlineSpan>[
                  WidgetSpan(
                    child: Icon(Icons.favorite, size: 14, color: Colors.red),
                  ),
                  TextSpan(text: '|'),
                  WidgetSpan(
                    child:
                        Icon(Icons.copyright, size: 14, color: Colors.black),
                  ),
                  TextSpan(text: ' Fahriza Vita A'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
