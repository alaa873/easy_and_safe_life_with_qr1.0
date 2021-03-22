import 'package:easy_and_safe_life_with_qr/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_and_safe_life_with_qr/chat/view/single_chat.dart';

class AllChats extends StatelessWidget {
  static const routeName = "/all-chats";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Chats",
          style: TextStyle(
            color: Colors.indigo,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.toNamed(AllChats.routeName);
        },
        child: Icon(Icons.edit),
        backgroundColor: KMainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChatCard(1),
            ChatCard(2),
            ChatCard(3),
            ChatCard(4),
            ChatCard(5),
            ChatCard(6),
            ChatCard(1),
            ChatCard(5),
            ChatCard(3),
            ChatCard(4),
            ChatCard(5),
            ChatCard(6),
            ChatCard(1),
            ChatCard(5),
          ],
        ),
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final int imageNum;
  ChatCard(this.imageNum);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListTile(
            onTap: () {
              Get.toNamed(SingleChat.routeName, arguments: imageNum);
            },
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage("assets/avatars/avatar-$imageNum.jpg"),
              maxRadius: 30,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(sendersNames[imageNum]),
                Text(
                  "$imageNum min ago",
                ),
              ],
            ),
            subtitle: Text(
              subTitles[imageNum],
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Container(
          height: 1.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1.0,
              ),
            ],
          ),
        ),
        // Divider(height: 1.0,color: Colors.grey,)
      ],
    );
  }
}

List<String> sendersNames = [
  'Ali ELnaghy',
  'Mohamed ELnaghy',
  'Mostafa ELnaghy',
  'Muhamed Sakr',
  'Mohamed Lotfy',
  "Mahmoud Ahmed",
  "Alaa Ali",
];

List<String> subTitles = [
  'Hey , I\'m Ali ELnaghy',
  'Hey , I\'m Mohamed ELnaghy',
  'Hey , I\'m Mostafa ELnaghy',
  'Hey , I\'m Muhamed Sakr',
  'Hey , I\'m Mohamed Lotfy',
  "Hey , I\'m Mahmoud Ahmed",
  "Hey , I\'m Alaa Ali",
];
