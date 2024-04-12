import 'package:flutter/material.dart';

// Define a class for the button configuration
class ButtonConfig {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  ButtonConfig({required this.text, required this.color, required this.onPressed});
}

// Custom Button Widget
class CustomButton extends StatelessWidget {
  final ButtonConfig config;

  const CustomButton({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: config.color, // Text color (assuming a contrast color is desired)
      ),
      onPressed: config.onPressed,
      child: Text(config.text),
    );
  }
}

