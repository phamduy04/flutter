import 'package:flutter/material.dart';

class TextInfor extends StatelessWidget {
  const TextInfor({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(title,
            style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold))
                );
  }
}
