import 'package:flutter/material.dart';
import 'ui/screens/welcome_screen.dart';
import 'ui/screens/temperature_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _started = false; // false = Welcome, true = Temperature

  void _start() {
    setState(() {
      _started = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF1FC468), Color(0xFF00BFC8)],
            ),
          ),
          child: _started
              ? TemperatureScreen()
              : WelcomeScreen(onStart: _start),
        ),
      ),
    );
  }
}