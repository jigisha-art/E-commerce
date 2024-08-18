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
        leading: const Text("Ecommerce"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            const Text(
              "Welcome to Ecommerce _applicaton",
              style: TextStyle(
                fontSize: 24,
                height: 120,
                backgroundColor: Colors.orange,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
