import 'package:flutter/material.dart';

enum Prices { level1, level2, level3, level4, all }

class Filter extends StatefulWidget {
  final Function() onSave;
  Filter({super.key, required this.onSave});

  // final price = [
  //   "Less than N60,000",
  //   "N60,000 - N120,0000",
  //   "N120,0000 - N180,0000",
  //   "N240,000 and above",
  //   "All prices",
  // ];

  // final ratings = [
  //   "1 Star",
  //   "2 Stars",
  //   "3 Stars",
  //   "4 Stars",
  //   "5 Stars",
  // ];
  var space = [
    FilterOptions(title: "Single Room", selected: false),
    FilterOptions(title: "Self Contain", selected: false),
    FilterOptions(title: "1 Bedroom Flat", selected: false),
    FilterOptions(title: "2 Bedroom Flat", selected: false),
    FilterOptions(title: "Others", selected: false),
  ];

  var price = [
    FilterOptions(title: "Less than N60,000"),
    FilterOptions(title: "N60,000 - N120,0000"),
    FilterOptions(title: "N120,0000 - N180,0000"),
    FilterOptions(title: "N240,000 and above"),
    FilterOptions(title: "All prices"),
  ];

  var rating = [
    FilterOptions(title: "1 Star", selected: false),
    FilterOptions(title: "2 Star", selected: false),
    FilterOptions(title: "3 Star", selected: false),
    FilterOptions(title: "4 Star", selected: false),
    FilterOptions(title: "5 Star", selected: false),
  ];

  String? selectedPrice = "All prices";

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  clearFilter() {
    setState(() {
      for (var options in widget.space) {
        options.selected = false;
      }
      for (var options in widget.rating) {
        options.selected = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Theme.of(context).textTheme.titleLarge!.color,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: clearFilter,
            child: const Text(
              "Clear",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
        title: Text(
          "Filter",
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).textTheme.titleLarge!.color,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Space Type",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: List.generate(
                            widget.space.length,
                            (index) => Column(
                              children: [
                                CheckboxListTile(
                                  value: widget.space[index].selected,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.space[index].selected = value!;
                                    });
                                  },
                                  title: Text(widget.space[index].title),
                                ),
                                const Divider(
                                  height: 0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Price Range",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: List.generate(
                            widget.space.length,
                            (index) => Column(
                              children: [
                                RadioListTile(
                                  value: widget.price[index].title,
                                  groupValue: widget.selectedPrice,
                                  onChanged: (String? value) {
                                    setState(() {
                                      widget.selectedPrice = value!;
                                    });
                                  },
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  title: Text(widget.price[index].title),
                                ),
                                const Divider(
                                  height: 0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Rating",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: List.generate(
                            widget.rating.length,
                            (index) => Column(
                              children: [
                                CheckboxListTile(
                                  value: widget.rating[index].selected,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.rating[index].selected = value!;
                                    });
                                  },
                                  title: Text(widget.rating[index].title),
                                  // subtitle: const Text('Supporting text'),
                                ),
                                const Divider(
                                  height: 0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 85,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
                bottom: 20,
              ),
              child: ElevatedButton(
                onPressed: widget.onSave,
                child: const Text(
                  "Save",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FilterOptions {
  String title;
  bool? selected;

  FilterOptions({required this.title, this.selected});
}
