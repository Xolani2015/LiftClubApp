import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String buttonText;
  VoidCallback onPressed;
  AppButton({Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) return Colors.green;
                return Colors.yellow; // Use the component's default.
              },
            ),
            padding: MaterialStateProperty.all(const EdgeInsets.only(
                left: 50, right: 50, top: 15, bottom: 15))),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.black),
        ));
  }
}
