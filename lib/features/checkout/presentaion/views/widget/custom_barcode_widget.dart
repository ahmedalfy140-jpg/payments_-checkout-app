import 'package:flutter/material.dart';

class BarcodeWidget extends StatelessWidget {
  const BarcodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bars = [
      3, 1, 2, 1, 4, 1, 2, 3, 1, 2,
      4, 1, 1, 3, 2, 1, 4, 2, 1, 3,
      2, 4, 1, 2, 3, 1, 2, 4,
    ];

    return SizedBox(
      width: 130,
      height: 65,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(
          bars.length,
          (index) {
            return Expanded(
              flex: bars[index],
              child: Container(
                margin: const EdgeInsets.only(right: 2),
                color: index.isEven
                    ? Colors.black
                    : Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}