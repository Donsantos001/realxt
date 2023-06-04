import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:realestate/widgets/splash.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'auth/choice.dart';

class IntroSlider extends StatefulWidget {
  const IntroSlider({super.key});

  @override
  State<IntroSlider> createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  PageController controller = PageController();

  int stage = 0;
  int pages = 3;
  var onboard = [
    {
      "title": "Connect Directly",
      "description":
          "Contact your home owner directly with just a few clicks at your convenience",
      "image": "world.png",
    },
    {
      "title": "Affordable Prices",
      "description": "Get your desired land or apartment at your budget prices",
      "image": "connect.png",
    },
    {
      "title": "Track Rent",
      "description": "Take appropriate record of rent being paid by tenants",
      "image": "analytics.png",
    }
  ];

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                stage = index;
              });
            },
            controller: controller,
            itemCount: pages,
            itemBuilder: (BuildContext context, int index) {
              return Splash(
                stage: index,
                title: onboard[index]["title"]!,
                description: onboard[index]["description"]!,
                image: "assets/images/${onboard[index]["image"]!}",
                nextStage: () {
                  if (index < pages - 1) {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const AuthChoice()),
                      ),
                    );
                  }
                },
              );
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 18),
          alignment: Alignment.bottomCenter,
          child: SmoothPageIndicator(
            controller: controller,
            count: pages,
            effect: WormEffect(
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.only(bottom: 10, right: 10),
          child: stage == pages - 1
              ? null
              : TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const AuthChoice()),
                    ),
                  ),
                  child: Text(
                    "skip",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
