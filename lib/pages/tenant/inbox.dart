import 'package:flutter/material.dart';
import 'package:realestate/sections/tenant/search_box.dart';
import 'package:realestate/widgets/estate_item.dart';

import '../../widgets/inbox_tile.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
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
                "Inbox",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SearchBox(
              filter: false,
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
                  itemBuilder: ((context, index) => Column(
                        children: [
                          InboxTile(),
                          Divider(
                            height: 0,
                          ),
                        ],
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
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 40,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.edit,
                size: 30,
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
