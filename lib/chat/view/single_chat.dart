import 'package:flutter/material.dart';
import 'package:easy_and_safe_life_with_qr/helpers/constants.dart';
import 'package:get/get.dart';

class SingleChat extends StatelessWidget {
  static const routeName = "/single-chat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          sendersNames[Get.arguments],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          itemBuilder: (ctx, i) =>
              MessagePop(i % 2 == 0 ? true : false, i, Get.arguments),
          itemCount: messages.length,
        ),
      ),
      bottomNavigationBar: Container(
        decoration: kMessageContainerDecoration,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: kMessageTextFieldDecoration,
                onChanged: (value) {
                  //Do something with the user input.
                },
              ),
            ),
            FlatButton(
              onPressed: () {
                //Implement send functionality.
              },
              child: Text(
                'Send',
                style: kSendButtonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessagePop extends StatelessWidget {
  final bool mainUser;
  final int messageNum;
  final int imageNum;
  MessagePop(this.mainUser, this.messageNum, this.imageNum);
  @override
  Widget build(BuildContext context) {
    return mainUser
        ? Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/avatars/avatar-$imageNum.jpg",
                  ),
                  maxRadius: 30,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(4.0),
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: Color(0xFFE7EAED),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  messages[messageNum],
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                margin: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: KMainColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  messages[messageNum],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          );
  }
}

List<String> messages = [
  "Hello , my friend ",
  "Are you there ? how are you ? ",
  "Let's start it ",
  "ok , what do you think about it ?"
];
List<String> sendersNames = [
  'Ali ELnaghy',
  'Mohamed ELnaghy',
  'Mostafa ELnaghy',
  'Muhamed Sakr',
  'Mohamed Lotfy',
  "Mahmoud Ahmed",
  "Abbas Mostafa",
];
