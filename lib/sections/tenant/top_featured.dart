import 'package:flutter/material.dart';

import '../../widgets/featured_item.dart';

class TopFeatured extends StatelessWidget {
  const TopFeatured({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(color: Theme.of(context).highlightColor),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: const [
                Text(
                  "Top featured",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 2,
            ),
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return FeaturedItem(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
