import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final String txt;
  IconData icon;
  MyBox({super.key, required this.txt, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.orange[800],
          ),
          Text(
            txt.toString(),
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
