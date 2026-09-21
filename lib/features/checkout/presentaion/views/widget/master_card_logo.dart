import 'package:flutter/material.dart';

class MastercardLogo extends StatelessWidget {
  const MastercardLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 24,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 3,
            child: Container(
              width: 19,
              height: 19,
              decoration: const BoxDecoration(
                color: Color(0xFFEB001B),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Positioned(
            right: 0,
            top: 3,
            child: Container(
              width: 19,
              height: 19,
              decoration: const BoxDecoration(
                color: Color(0xFFFF9900),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
