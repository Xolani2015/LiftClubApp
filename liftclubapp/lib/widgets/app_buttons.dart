import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String buttonText;
  bool isLongButton;
  VoidCallback onPressed;
  AppButton(
      {Key? key,
      required this.buttonText,
      this.isLongButton = false,
      required this.onPressed})
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
            padding: isLongButton == false
                ? MaterialStateProperty.all(const EdgeInsets.only(
                    left: 50, right: 50, top: 15, bottom: 15))
                : MaterialStateProperty.all(const EdgeInsets.only(
                    left: 140, right: 140, top: 15, bottom: 15))),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.black),
        ));
  }
}
