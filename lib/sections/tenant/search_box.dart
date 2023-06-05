import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final Function()? onFilter;
  final Function() onSearch;
  final bool? filter;
  const SearchBox(
      {super.key,
      this.onFilter,
      required this.onSearch,
      this.filter = true});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "searchsection",
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: TextField(
              textInputAction: TextInputAction.go,
              onEditingComplete: () {
                // print("donddg");
              },
              onSubmitted: (x) {
                // print(x);
              },
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Search",
                prefixIcon: filter!
                    ? IconButton(
                        padding: const EdgeInsets.only(right: 5),
                        onPressed: onFilter,
                        icon: const Icon(
                          Icons.filter_alt_outlined,
                          size: 24,
                          color: Colors.black,
                        ),
                      )
                    : null,
                suffixIcon: IconButton(
                  padding: const EdgeInsets.only(right: 5),
                  onPressed: onSearch,
                  icon: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   width: double.infinity,
          //   height: 56,
          //   padding: const EdgeInsets.symmetric(
          //     vertical: 10,
          //     horizontal: 2,
          //   ),
          //   alignment: Alignment.centerLeft,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 8,
          //     itemBuilder: (context, index) => CategoryOption(rank: index),
          //   ),
          // ),
        ],
      ),
    );
  }
}
