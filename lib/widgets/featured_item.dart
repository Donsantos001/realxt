import 'dart:math';

import 'package:flutter/material.dart';
import 'package:realestate/widgets/rating.dart';

import '../pages/tenant/featured_detail.dart';

class FeaturedItem extends StatelessWidget {
  final int index;
  const FeaturedItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FeaturedDetail(
              index: index,
            ),
          ),
        ),
        child: Container(
          constraints: const BoxConstraints(
            minWidth: 210,
            minHeight: 210,
            maxWidth: 250,
            maxHeight: 250,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).cardColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 3,
              )
            ],
          ),
          child: Stack(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Hero(
                      tag: "avatar$index",
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.asset(
                            "assets/images/house${index % 5}.jpg",
                            fit: BoxFit.cover,
                            cacheHeight: 150,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Duplex",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "N700,000/Yr",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Rating(
                  rating: Random().nextInt(5) + 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
