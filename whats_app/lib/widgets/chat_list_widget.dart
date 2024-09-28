import 'package:flutter/material.dart';

import '../constant/colors.dart';

class ChatListWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String trailing;
  const ChatListWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(
          title,maxLines: 1,
          style: TextStyle(color: titleTextColors, fontSize: 20),
        ),
        subtitle: Text(
          subtitle,
          maxLines: 1,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        trailing: Text(trailing),
      ),
    );
  }
}
