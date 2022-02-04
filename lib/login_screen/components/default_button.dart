import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

class DefaultButton extends StatelessWidget {

  final String text;
  final VoidCallback press;


  const DefaultButton({Key? key, required this.text, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      height: 56,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
