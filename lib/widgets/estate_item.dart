import 'dart:math';

import 'package:flutter/material.dart';
import 'package:realestate/widgets/rating.dart';

import '../pages/tenant/estate_detail.dart';

class EstateItem extends StatefulWidget {
  final int index;
  final bool delete;
  const EstateItem({super.key, required this.index, this.delete = false});

  @override
  State<EstateItem> createState() => _EstateItemState();
}

class _EstateItemState extends State<EstateItem> {
  bool _liked = false;

  void _delete(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text('Are you sure to remove this item?'),
            // content: const Text('Are you sure to remove this item?'),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary),
                onPressed: () {
                  setState(() {
                    // _isShown = false;
                  });
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'No',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Yes',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EstateDetail(
              index: widget.index,
            ),
          ),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Flexible(
                    child: Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Hero(
                          tag: "estate${widget.index}",
                          child: Image.asset(
                            "assets/images/house${widget.index % 5}.jpg",
                            fit: BoxFit.cover,
                            cacheWidth: 170,
                            cacheHeight: 140,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: Rating(
                        rating: Random().nextInt(5) + 1,
                      ),
                    ),
                  ],
                )),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "2 Bedroom Flat",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const Flexible(
                              child: Text(
                                "17, Owolabi street, Ajayi Road, Lekki, Lagos State",
                                textAlign: TextAlign.start,
                                style: TextStyle(),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.bed_outlined,
                                ),
                                Text("2")
                              ],
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.shower_outlined,
                                ),
                                Text("2")
                              ],
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  IconData(0xe6dc, fontFamily: 'MaterialIcons'),
                                ),
                                Text("2")
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "N700,000/Yr",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 3,
              right: 3,
              child: widget.delete
                  ? IconButton(
                      onPressed: () => _delete(context),
                      icon: const Icon(
                        Icons.close_rounded,
                        color: Colors.red,
                        size: 32,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          _liked = !_liked;
                        });
                      },
                      icon: Icon(
                        _liked ? Icons.favorite : Icons.favorite_outline,
                        color: Colors.red,
                        size: 32,
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
