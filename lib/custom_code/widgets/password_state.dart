// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class PasswordState extends StatefulWidget {
  const PasswordState({
    super.key,
    this.width,
    this.height,
    required this.password,
  });

  final double? width;
  final double? height;
  final String password;

  @override
  State<PasswordState> createState() => _PasswordStateState();
}

class _PasswordStateState extends State<PasswordState> {
  int getPasswordStrength(String password) {
    int strength = 0;

    if (password.length >= 8) strength += 1;
    if (RegExp(r'[a-z]').hasMatch(password)) strength += 1;
    if (RegExp(r'[A-Z]').hasMatch(password)) strength += 1;
    if (RegExp(r'[0-9]').hasMatch(password)) strength += 1;
    if (RegExp(r'[^a-zA-Z0-9]').hasMatch(password)) strength += 1;

    return strength;
  }

  String getStrengthLabel(int strength) {
    switch (strength) {
      case 1:
        return 'Very Weak';
      case 2:
        return 'Weak';
      case 3:
        return 'Medium';
      case 4:
        return 'Strong';
      case 5:
        return 'Very Strong';
      default:
        return 'Very Weak';
    }
  }

  Color getStrengthColor(int strength) {
    switch (strength) {
      case 1:
      case 2:
        return Colors.red;
      case 3:
        return Colors.orange;
      case 4:
        return Colors.yellow;
      case 5:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    int strength = getPasswordStrength(widget.password);
    String strengthLabel = getStrengthLabel(strength);
    Color strengthColor = getStrengthColor(strength);

    List<Color> colors = List<Color>.filled(5, Colors.grey);
    for (int i = 0; i < strength; i++) {
      colors[i] = strengthColor;
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  height: 3,
                  color: colors[index],
                ),
              );
            }),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              strengthLabel,
              style: TextStyle(color: strengthColor, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
