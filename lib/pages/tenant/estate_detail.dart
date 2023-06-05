import 'dart:math';
import 'package:flutter/material.dart';
import '../../sections/tenant/owner_peep.dart';
import '../../widgets/rating.dart';

class EstateDetail extends StatefulWidget {
  final int index;
  const EstateDetail({super.key, required this.index});

  @override
  State<EstateDetail> createState() => _EstateDetailState();
}

class _EstateDetailState extends State<EstateDetail> {
  bool _liked = false;
  final int _rating = Random().nextInt(4) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Hero(
                    tag: "estate${widget.index}",
                    child: SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/images/house${widget.index % 5}.jpg",
                          fit: BoxFit.cover,
                          cacheHeight: 300,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Rating(
                          rating: _rating,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "$_rating.5",
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    IconButton(
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
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "2 Bedroom Flat",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Flexible(
                      child: Text(
                        "17, Owolabi street, Ajayi Road, Lekki, Lagos State",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
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
                      width: 20,
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
                      width: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          IconData(0xe6dc, fontFamily: 'MaterialIcons'),
                        ),
                        Text("2")
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "N700,000/Yr",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const OwnerPeep(),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Description",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Sed euismod, diam id aliquam dapibus, "
                  "nunc nunc aliquet nunc, nec aliquet nisl nunc sit amet nunc. "
                  "Sed euismod, diam id aliquam dapibus, "
                  "nunc nunc aliquet nunc, nec aliquet nisl nunc sit amet nunc. "
                  "Sed euismod, diam id aliquam dapibus, "
                  "nunc nunc aliquet nunc, nec aliquet nisl nunc sit amet nunc. "
                  "Sed euismod, diam id aliquam dapibus, "
                  "nunc nunc aliquet nunc, nec aliquet nisl nunc sit amet nunc. "
                  "Sed euismod, diam id aliquam dapibus, "
                  "nunc nunc aliquet nunc, nec aliquet nisl nunc sit amet nunc. "
                  "Sed euismod, diam id aliquam dapibus, "
                  "nunc nunc aliquet nunc, nec aliquet nisl nunc sit amet nunc. "
                  "Sed euismod, diam id aliquam dapibus, "
                  "nunc nunc aliquet nunc, nec aliquet nisl nunc sit amet nunc. "
                  "Sed euismod, diam id aliquam dapibus, "
                  "nunc nunc aliquet nunc, nec aliquet nisl nunc sit amet nunc. ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Amenities",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.wifi,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Wifi",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.local_parking,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Parking",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.pool,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Swimming Pool",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.local_laundry_service,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Laundry",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.local_dining,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Restaurant",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.local_bar,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Bar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.tv,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "TV",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(
                    width: double.infinity,
                    height: 50,
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.image_outlined),
                    label: const Text(
                      "View Images",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(
                    width: double.infinity,
                    height: 50,
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_checkout),
                    label: const Text(
                      "Checkout",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
