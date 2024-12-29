import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  surface: const Color.fromARGB(255, 56, 49, 66),
  seedColor: const Color.fromARGB(255, 102, 6, 247),
);

final theme = ThemeData().copyWith(
    scaffoldBackgroundColor: colorScheme.surface,
    colorScheme: colorScheme,
    textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
      titleLarge: GoogleFonts.ubuntuCondensed(
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.ubuntuCondensed(
        fontWeight: FontWeight.bold,
      ),
      titleSmall: GoogleFonts.ubuntuCondensed(
        fontWeight: FontWeight.bold,
      ),
    ));
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: HomeScreen(),
    );
  }
}
