import 'package:flutter/material.dart';
// import 'package:homi_front_end/components/chat_card.dart';
// import 'package:homi_front_end/components/chat_card.dart';
import 'package:homi_front_end/models/chat.dart';
import 'package:homi_front_end/pages/user/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final chats = [
      Chat(
          chatName: "Landlord Maina",
          lastMessage: "Welcome to heri",
          unreadMessage: 2),
      Chat(
          chatName: "Heri Group Chat",
          lastMessage: "Party at 5",
          unreadMessage: 0),
      Chat(
          chatName: "Complaints",
          lastMessage: "Will be completed tomorrow",
          unreadMessage: 1),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('What\'s Up Homi?'),
        leading: Container(), // removing the back button
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  return ChatCard(chat: chats[index]);
                }),
          ),
          // Expanded(
          //   child: ListView.builder(
          //       itemCount: chats.length,
          //       itemBuilder: (context, index) {
          //         return ChatOcc(chat: chats[index]);
          //       }),
          // ),
          const SizedBox(height: 15),
          SizedBox(
            height: 500, // Adjusted height for the image
            child: Image.asset(
              'assets/hg.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
