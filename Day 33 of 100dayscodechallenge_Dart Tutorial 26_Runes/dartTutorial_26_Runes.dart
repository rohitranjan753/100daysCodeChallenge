//Date 31/10/2022 11:30 AM

//Dart programming fundamentals
//Topics covered is Runes.

// In Dart language, strings are simply a sequence of UTF-16 (16-bit Unicode Transformation Format) code units.
//The Unicode format maps a unique numeric character to represent every digit, letter, or symbol. 

// A rune can be defined as an integer used to represent any Unicode code point

import 'dart:core';

void main() {
  f1();

  "A string".runes.forEach((int rune) {
    var character = new String.fromCharCode(rune);
    print(character);
  });

  var heart_rune = '\u2665';
  var theta_rune = '\u{1f600}';
  print(heart_rune);
  print(theta_rune);
}

f1() {
  String x = 'Runes';

  //Returns the 16-bit UTF-16 code unit at the given index.
  print(x.codeUnitAt(0));

  //Returns the 16-bit for all characters.
  print(x.codeUnits);
}
