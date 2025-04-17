import 'package:flutter/material.dart';

class RegisterText extends StatelessWidget {
  final VoidCallback onPressed;

  const RegisterText({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: RichText(
        text: TextSpan(
          text: "Não tem conta? ",
          style: TextStyle(color: Colors.black54),
          children: [
            TextSpan(
              text: "Registre-se",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}