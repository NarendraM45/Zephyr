import 'package:flutter/material.dart';

class AppTypography {
  // For use ON weather gradient backgrounds — always white
  static TextStyle temperature({double size = 96, FontWeight w = FontWeight.w300}) =>
    const TextStyle(fontFamily: 'JetBrainsMono', fontSize: 96,
        color: Colors.white, fontWeight: FontWeight.w300, letterSpacing: -2);

  static TextStyle weatherHeading() =>
    const TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 32,
        color: Colors.white, fontWeight: FontWeight.w600, letterSpacing: -0.5);

  static TextStyle weatherBody({double size = 16}) =>
    TextStyle(fontFamily: 'NunitoSans', fontSize: size,
        color: Colors.white.withOpacity(0.85));

  static TextStyle weatherLabel({double size = 13}) =>
    TextStyle(fontFamily: 'NunitoSans', fontSize: size,
        color: Colors.white.withOpacity(0.65), letterSpacing: 0.5);

  // For use on Theme-aware surfaces — adapts to light/dark
  static TextStyle heading1(BuildContext context, {Color? color}) =>
    TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 32, fontWeight: FontWeight.w600,
        letterSpacing: -0.5,
        color: color ?? Theme.of(context).colorScheme.onSurface);

  static TextStyle heading2(BuildContext context, {Color? color}) =>
    TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 22, fontWeight: FontWeight.w500,
        color: color ?? Theme.of(context).colorScheme.onSurface);

  static TextStyle body(BuildContext context, {double size = 16, Color? color}) =>
    TextStyle(fontFamily: 'NunitoSans', fontSize: size,
        color: color ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.75));

  static TextStyle label(BuildContext context, {double size = 13, Color? color}) =>
    TextStyle(fontFamily: 'NunitoSans', fontSize: size, fontWeight: FontWeight.w600,
        color: color ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.55),
        letterSpacing: 0.5);
}
