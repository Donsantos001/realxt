import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../sections/tenant/estate_properties.dart';
import '../../sections/tenant/home_top.dart';
import '../../sections/tenant/search_box.dart';
import '../../sections/tenant/top_featured.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 223, 219, 219),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                children: const [
                  HomeTop(),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //     vertical: 15,
                  //     horizontal: 10,
                  //   ),
                  //   child: Text(
                  //     "Find your best rental home",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.w900,
                  //       fontSize: 22,
                  //     ),
                  //   ),
                  // ),
                  // SearchBox(),
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: 4,
          // ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  TopFeatured(),
                  EstateProperties(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
