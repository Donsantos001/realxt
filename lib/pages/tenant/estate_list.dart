import 'package:flutter/material.dart';
import 'package:realestate/sections/tenant/search_box.dart';
import 'package:realestate/widgets/estate_item.dart';
import 'package:realestate/widgets/filter.dart';

class EstateList extends StatefulWidget {
  const EstateList({super.key});

  @override
  State<EstateList> createState() => _EstateListState();
}

class _EstateListState extends State<EstateList> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).textTheme.titleLarge!.color,
        backgroundColor: Theme.of(context).cardColor,
        title: const Text(
          "Estates",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0.5,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SearchBox(
              onFilter: () {
                _showFilterModal(context);
              },
              onSearch: () {},
            ),
            // const SizedBox(
            //   height: 10,
            // ),
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
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
