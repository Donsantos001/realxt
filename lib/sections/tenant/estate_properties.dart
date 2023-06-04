import 'package:flutter/material.dart';
import 'package:realestate/widgets/estate_item.dart';

import '../../pages/tenant/estate_list.dart';

class EstateProperties extends StatelessWidget {
  const EstateProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                "Estate properties",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EstateList()),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Explore all",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 2,
            ),
            child: Column(
              children: List.generate(6, (index) => EstateItem(index: index)),
            ),
          ),
        ],
      ),
    );
  }
}
