import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final dynamic textColor;
  final dynamic elevatedButtonColor;
  const MyElevatedButton(
      {super.key, required this.onPressed,
      required this.text,
      this.textColor,
      this.elevatedButtonColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: ElevatedButton(
          onPressed: onPressed(),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(elevatedButtonColor), // Background color
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Border radius
                // You can also specify a border color if needed:
                // side: BorderSide(color: Colors.red),
              ),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: textColor),
          )),
    );
  }
}
