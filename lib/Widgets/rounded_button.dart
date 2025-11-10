import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttonName;
  final Icon? icon;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final VoidCallback? voidCallback;

  RoundedButton({
    required this.buttonName,
    this.icon,
    this.backgroundColor = Colors.blue,
    this.textStyle,
    this.voidCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        voidCallback!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,

        shadowColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(21),
            bottomLeft: Radius.circular(21),
          ),
        ),
      ),
      child:
          icon != null
              ? Row(mainAxisAlignment:MainAxisAlignment.center,children: [icon!,Container(width: 11,), Text(buttonName, style: textStyle)])
              : Text(buttonName, style: textStyle),
    );
  }
}
