import 'package:flutter/material.dart';
import '../resource/palette.dart';

class CategoryOption extends StatelessWidget {
  final int rank;
  const CategoryOption({super.key, required this.rank});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor:
                Palette.rankColors[rank % Palette.rankColors.length].shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Random',
            style: TextStyle(
                fontSize: 16,
                color: Palette.rankColors[rank % Palette.rankColors.length]),
          ),
        ),
      ),
    );
  }
}
