import 'package:ecommerce_app/utils.dart';
import 'package:flutter/material.dart';

import 'components/splash_rounded_text_field.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/ecommerce-2607114_1280.jpg",
            fit: BoxFit.fitHeight,
            height: double.infinity,
          ),
          Container(
            color: getColor(0xaa000000),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: getSizeOfContext(context).width * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SplashRoundedTextField(
                      hintText: "full name",
                    ),
                    SplashRoundedTextField(
                      hintText: "e-mail address",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SplashRoundedTextField(
                      hintText: "password",
                      isObsecure: true,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
