import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  const DashedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.maxWidth / 8).floor(),
            (index) {
              return Container(
                width: 4,
                height: 2,
                color: const Color(0xFFBDBDBD),
              );
            },
          ),
        );
      },
    );
  }
}