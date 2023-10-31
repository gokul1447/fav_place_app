import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:place_save/screens/place_list.dart';
import 'package:place_save/widgets/places_list.dart';

final colorScheme = ColorScheme.fromSwatch(
  primarySwatch: Colors.purple,
  brightness: Brightness.dark,
).copyWith(
  background: const Color(0xFF5A0505), // Change the color value as needed.
);

final theme = ThemeData().copyWith(
  useMaterial3: true,
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
  ),

);
void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Great Places',
      theme: theme,
      home: PlaceList(),
  );
}

}