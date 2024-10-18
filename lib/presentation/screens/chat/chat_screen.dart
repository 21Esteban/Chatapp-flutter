import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_application_1/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_application_1/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://platform.polygon.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/24390847/last_knight_optimus.jpeg?quality=90&strip=all&crop=23.501263423879,0,54.200884396715,100"),
            ),
          ),
          title: const Text("Optimus")),
      body:const  _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return index % 2 == 0  ? const HerMessageBubble() : const MyMessageBubble();
              },
            )),
           const  MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
