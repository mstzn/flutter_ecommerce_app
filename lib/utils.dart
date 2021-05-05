import 'package:flutter/material.dart';

const double kDefaultPadding = 10.0;

Size getSizeOfContext(BuildContext context) {
  return MediaQuery.of(context).size;
}

Map<int, Color> baseColor = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor getColor(int primary) {
  return MaterialColor(primary, baseColor);
}

void goToNewScreen(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) {
        return screen;
      },
      maintainState: false,
    ),
  );
}

void goToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return screen;
      },
      maintainState: false,
    ),
  );
}
