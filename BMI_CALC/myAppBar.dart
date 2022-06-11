import 'package:flutter/material.dart';

class myAppBar extends StatelessWidget {
  const myAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'BMI CALCULATOR',
        style: TextStyle(fontSize: 24),
      ),
      centerTitle: true,
      elevation: 8,
      foregroundColor: Colors.white,
    );
  }
}
