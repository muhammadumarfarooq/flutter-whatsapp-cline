import 'package:flutter/material.dart';
import 'package:whats_clone/calls_screen.ts.dart';
import 'package:whats_clone/chats_screen.dart';
import 'package:whats_clone/status_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: const Color(0xff008069),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.groups),
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            PopupMenuButton(icon: const Icon(Icons.more_vert), itemBuilder: (context) => const [
              PopupMenuItem(value: '1', child: Text('New Group')),
              PopupMenuItem(value: '2', child: Text('Settings')),
              PopupMenuItem(value: '3', child: Text('Logout')),
            ])
          ],
        ),
        body: const TabBarView(
          children: [
            Text('Groups'),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
