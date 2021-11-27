import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  const InputText({Key? key, required this.text, required this.controller}) : super(key: key);
  final String text;
  final  TextEditingController? controller; 
  
  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              child: Text(
            text,
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
          )),
          Expanded(
              child: TextField(
            autofocus: false,
             onEditingComplete: (() => focusNode.requestFocus()),
            controller: controller,
            decoration: InputDecoration(),
          ))
        ],
      ),
    );
  }
}
