import 'package:flutter/material.dart';
import 'package:realestate/sections/tenant/search_box.dart';
import 'package:realestate/widgets/estate_item.dart';

import '../../widgets/filter.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  _showFilterModal(context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: "Filter",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (_, __, ___) {
        return Filter(onSave: () => Navigator.pop(context));
      },
    );
  }

  _delete(BuildContext context) {
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
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15,
          bottom: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Saved Items",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SearchBox(
              onFilter: () {
                _showFilterModal(context);
              },
              onSearch: () {},
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: EstateItem(
                          index: index,
                          delete: true,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 70,
          padding: const EdgeInsets.only(top: 5, bottom: 10),
          alignment: Alignment.center,
          child: SizedBox(
            height: 40,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () => _delete(context),
              icon: const Icon(Icons.delete_forever_rounded),
              label: const Text(
                "Remove all",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
