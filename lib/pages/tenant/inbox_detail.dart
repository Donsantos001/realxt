import 'package:flutter/material.dart';

import '../../widgets/inbox_input_box.dart';
import '../../widgets/sent_message.dart';

class InboxDetail extends StatefulWidget {
  const InboxDetail({super.key});

  @override
  State<InboxDetail> createState() => _InboxDetailState();
}

class _InboxDetailState extends State<InboxDetail> {
  List<Map<String, Object>> testChat = [
    {},
    {
      'message': 'Hello, how are you?',
      'time': '12:34 PM',
      'sent': false,
      'middle': true,
    },
    {
      'message':
          'Hello, how are you? \nI thought you were free \nI thought you may want to see me',
      'time': '12:34 PM',
      'sent': false,
      'middle': true,
    },
    {
      'message': 'Hello, how are you? \nI thought you were free',
      'time': '12:34 PM',
      'sent': false,
      'middle': false,
    },
    {
      'message': 'Hello, how are you? \nI thought you were free',
      'time': '12:34 PM',
      'sent': true,
      'middle': false,
    },
    {
      'message': 'Hello, how are you? \nI thought you were free',
      'time': '12:34 PM',
      'sent': false,
      'middle': true,
    },
    {
      'message': 'Hello, how are you?',
      'time': '12:34 PM',
      'sent': false,
      'middle': true,
    },
    {
      'message':
          'Hello, how are you? \nI thought you were free \nI thought you may want to see me',
      'time': '12:34 PM',
      'sent': false,
      'middle': true,
    },
    {
      'message': 'Hello, how are you? \nI thought you were free',
      'time': '12:34 PM',
      'sent': false,
      'middle': false,
    },
    {
      'message': 'Hello, how are you? \nI thought you were free',
      'time': '12:34 PM',
      'sent': true,
      'middle': false,
    },
    {
      'message': 'Hello, how are you? \nI thought you were free',
      'time': '12:34 PM',
      'sent': false,
      'middle': true,
    },
    {
      'message': 'Hello, how are you?',
      'time': '12:34 PM',
      'sent': false,
      'middle': true,
    },
    {
      'message':
          'Hello, how are you? \nI thought you were free \nI thought you may want to see me',
      'time': '12:34 PM',
      'sent': false,
      'middle': true,
    },
    {
      'message': 'Hello, how are you? \nI thought you were free',
      'time': '12:34 PM',
      'sent': false,
      'middle': false,
    },
    {
      'message': 'Hello, how are you? \nI thought you were free',
      'time': '12:34 PM',
      'sent': true,
      'middle': false,
    },
    {
      'message': 'Hello, how are you? \nI thought you were free',
      'time': '12:34 PM',
      'sent': false,
      'middle': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.background,
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                    maxRadius: 20,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Kriss Benwat",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.settings,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: testChat.length,
                      itemBuilder: (context, index) => index == 0
                          ? const SizedBox(
                              height: 10,
                            )
                          : Padding(
                              padding: const EdgeInsets.only(bottom: 3),
                              child: SentMessage(
                                message: testChat[index]['message'] as String,
                                time: testChat[index]['time'] as String,
                                sent: testChat[index]['sent'] as bool,
                                middle: testChat[index]['middle'] as bool,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 66,
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                    bottom: 5,
                  ),
                  child: InboxInputBox(),
                ),
              )
            ],
          ),
        ));
  }
}
