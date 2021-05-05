import 'package:flutter/material.dart';

class SplashRoundedTextField extends StatelessWidget {
  const SplashRoundedTextField({
    Key key,
    @required this.hintText,
    this.isObsecure = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  final String hintText;
  final bool isObsecure;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        style: new TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
        obscureText: isObsecure,
        keyboardType: keyboardType,
        decoration: new InputDecoration(
          contentPadding: EdgeInsets.all(5),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          hintText: hintText,
          hintStyle: new TextStyle(color: Colors.white30),
        ),
      ),
    );
  }
}
