import 'package:flutter/material.dart';


class common_textfield extends StatefulWidget {
  const common_textfield({super.key});

  @override
  State<common_textfield> createState() => _common_textfieldState();
}

class _common_textfieldState extends State<common_textfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar",

        ),
      ),
    );
  }
}
