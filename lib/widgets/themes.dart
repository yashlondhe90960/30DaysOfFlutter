import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonTheme: ButtonThemeData(buttonColor: darkBluishColor),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme,
      ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
          .copyWith(secondary: darkBluishColor));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonTheme: ButtonThemeData(buttonColor: lightBluishColor),
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),

        // titleTextStyle: TextStyle(
        //   color: Colors.white,
        // ),
        // ignore: deprecated_member_use
        textTheme: Theme.of(context).textTheme.copyWith(
            headline6:
                context.textTheme.headline6!.copyWith(color: Colors.white)),
      ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
          .copyWith(secondary: darkBluishColor));

  // colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color.fromARGB(255, 50, 105, 223);
  static Color lightBluishColor = Vx.indigo500;
}
