import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int rating;
  const Rating({super.key, required this.rating});

  List<Widget> _buildRating() {
    List<Widget> stars = [];
    for (var i = 0; i < 5; i++) {
      stars.add(
        Icon(
          i < rating
              ? Icons.star
              : i == rating
                  ? Icons.star_half
                  : Icons.star_border,
          color: Colors.orange,
          shadows: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 4,
            )
          ],
        ),
      );
    }
    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: _buildRating(),
    );
  }
}
