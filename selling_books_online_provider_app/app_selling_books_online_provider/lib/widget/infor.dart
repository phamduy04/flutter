import 'package:flutter/material.dart';

class Infor extends StatelessWidget {
  const Infor({Key? key, required this.content}) : super(key: key);
  final String content; 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 40,
      color: Colors.green,
      child: Text(
        content,
        style: const TextStyle(
            fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
