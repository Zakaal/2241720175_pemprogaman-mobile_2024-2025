import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Creator : Mochammad Zakaro Al Fajri - NIM: 2241720175',
        style: TextStyle(fontSize: 12, fontStyle: FontStyle.normal),
        textAlign: TextAlign.center,
      ),
    );
  }
}
