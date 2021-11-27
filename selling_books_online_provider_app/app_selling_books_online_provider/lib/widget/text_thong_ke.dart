import 'package:flutter/material.dart';

class TextThongke extends StatelessWidget {
  const TextThongke({Key? key, required this.name, required this.text}) : super(key: key);
  final String name;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              child: Text(
            name,
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
          )),
          Expanded(
            child: Text(text),
          )
        ],
      ),
    );
  }
}
