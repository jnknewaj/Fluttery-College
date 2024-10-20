import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  /// Range between :  0.00 to 1.00
  final double? width;

  /// Default color : [Cyan]
  final Color? borderColor;

  /// Default [Cyan] in light theme
  final Color? primaryColor;

  /// Default [transparent] in light theme
  final Color? secondaryColor;
  final String text;
  final Function() onPressed;

  /// Primary intention is to show loading indcator instead of text.
  /// Default value is [false]. Set [true] if such widget is needed.
  final bool hasChild;

  const SimpleButton({
    Key? key,
    this.width,
    this.borderColor,
    this.primaryColor,
    this.secondaryColor,
    required this.text,
    required this.onPressed,
    this.hasChild = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * (width ?? 0.8),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: borderColor ?? Colors.cyan),
          foregroundColor: primaryColor,
          backgroundColor: secondaryColor,
        ),
        child: hasChild
            ? const SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(),
              )
            : Text(text),
      ),
    );
  }
}
