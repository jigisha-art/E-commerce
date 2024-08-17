import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Text("Ecommerce"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [Text("Welcome to Ecommerce _applicaton")],
        ),
      ),
    ));
  }
}
