import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            'Whatsapp',
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {
                
              },
              icon: const Icon(Icons.photo_camera),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            indicatorWeight: 4,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: const ContactList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
