import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InboxTile extends StatelessWidget {
  const InboxTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("assets/images/avatar.jpg"),
      ),
      title: const Text(
        "John Doe",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
      subtitle: const Text(
        "Owner/Agent",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      trailing: Column(children: [
        Text("9:32 AM"),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "2",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
