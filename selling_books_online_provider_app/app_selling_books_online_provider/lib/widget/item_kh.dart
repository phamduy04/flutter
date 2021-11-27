import 'package:flutter/material.dart';

class ItemKH extends StatelessWidget {
  const ItemKH({
    Key? key,
    required this.tenKH,
    required this.khVip,
    required this.color,
  }) : super(key: key);
  final String tenKH;
  final String khVip;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.person,
        color: color,
        size: 30,
      ),
      title: Text(tenKH,
          style: const TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
      subtitle: Text(khVip,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300)),
      trailing: IconButton(
        onPressed: () {
          print('you clicked');
        },
        icon: Icon(
          Icons.arrow_forward,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
