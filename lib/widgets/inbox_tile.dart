import 'package:flutter/material.dart';

import '../pages/tenant/inbox_detail.dart';
import '../resource/constants.dart';

class InboxTile extends StatelessWidget {
  final ChatState chatState;
  const InboxTile({super.key, this.chatState = ChatState.read});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const InboxDetail()));
      },
      child: ListTile(
        contentPadding: const EdgeInsets.only(
          top: 6,
          left: 10,
          right: 10,
        ),
        leading: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/avatar.jpg"),
        ),
        title: const Padding(
          padding: EdgeInsets.only(
            bottom: 8,
          ),
          child: Text(
            "John Doe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        subtitle: Text(
          chatState == ChatState.typing
              ? "Santos is typing..."
              : chatState == ChatState.read
                  ? "wow, that's interesting"
                  : "Looks Great Bro ...",
          style: TextStyle(
            fontSize: 16,
            fontWeight:
                chatState == ChatState.read ? FontWeight.w400 : FontWeight.w700,
            color: chatState == ChatState.typing
                ? Theme.of(context).colorScheme.primary
                : null,
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
              child: Text("9:32 AM"),
            ),
            chatState == ChatState.unread
                ? CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.only(
                          bottom: 3,
                        ),
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
