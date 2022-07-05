import 'package:flutter/material.dart';
import 'package:indikey/Componentes/constant.dart';



class DefaultButton extends StatelessWidget {
  final String text;
  final  press;
  const DefaultButton({
    Key? key,
    required this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}