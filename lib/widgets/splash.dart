import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  final int stage;
  final String title;
  final String description;
  final String image;
  final void Function() nextStage;

  const Splash({
    super.key,
    required this.stage,
    required this.title,
    required this.description,
    required this.image,
    required this.nextStage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 200, 247, 247),
      child: Stack(children: [
        Container(
          margin: const EdgeInsets.only(bottom: 100),
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 20,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(description, style: const TextStyle(fontSize: 18),),
                const SizedBox(height: 45),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: nextStage,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      stage == 2 ? "Get Started" : "Next",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
// 0CA894