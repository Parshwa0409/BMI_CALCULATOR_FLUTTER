// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'Colors.dart';

class P_M_Button extends StatelessWidget {
  P_M_Button({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(29, 31, 49, 1),
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}

class labelText extends StatelessWidget {
  labelText({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 32,
      ),
    );
  }
}

class labelNumber extends StatelessWidget {
  const labelNumber({Key? key, required this.value}) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value.toString(),
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 84,
      ),
    );
  }
}
