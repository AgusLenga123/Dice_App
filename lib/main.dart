import "package:flutter/material.dart"; // import the main tools for development
import "package:dice_app/gradient_container.dart";

// Main custom function
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 219, 138, 16),
          Color.fromARGB(255, 234, 164, 60),
          Color.fromARGB(255, 237, 192, 125)
        ]),
      ),
    ),
  );
}
