// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  GenderIcon({
    Key? key,
    required this.genderIcon,
    required this.iconColor,
    required this.bgColor,
  }) : super(key: key);
  final IconData genderIcon;
  Color bgColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor,
      ),
      child: Icon(
        genderIcon,
        size: 56,
        color: iconColor,
      ),
    );
  }
}

class GenderText extends StatelessWidget {
  const GenderText({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
    );
  }
}
