import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(child: ListView.builder(
          itemCount: 50, itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            radius: 22,
            backgroundColor: Colors.green,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/7562313/pexels-photo-7562313.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
          title: const Text(
            'Umar Farooq',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: const [
              Icon(
                Icons.done_all,
                size: 20,
                color: Color(0xff1ea6d0),
              ),
              SizedBox(width: 5),
              Text(
                'Hello',
              )
            ],
          ),
          trailing: const Text(
            '14/12/2022',
            style: TextStyle(color: Color(0xff6a7071)),
          ),
        );
      }))
    ]);
  }
}
