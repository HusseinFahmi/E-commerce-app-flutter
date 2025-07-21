import 'package:flutter/material.dart';

class MyListTittle extends StatelessWidget {
  MyListTittle({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  final String text;
  final IconData icon;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        title: Text(text),
        leading: Icon(icon, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}
