import 'package:flutter/material.dart';

class InboxInputBox extends StatefulWidget {
  @override
  _InboxInputBoxState createState() => _InboxInputBoxState();
}

class _InboxInputBoxState extends State<InboxInputBox> {
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              minLines: 1,
              maxLines: 3,
              controller: _messageController,
              style: TextStyle(
                fontSize: 18,
              ),
              decoration: const InputDecoration(
                hintText: "Type a message...",
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 8),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.send),
            mini: true,
          ),
        ],
      ),
    );
  }
}
