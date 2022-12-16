import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: const [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/7562313/pexels-photo-7562313.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  Positioned(
                      bottom: -5,
                      right: -8,
                      child: Icon(
                        Icons.add_circle,
                        color: Color(0xff008069),
                      )),
                ],
              ),
            ),
            title: const Text(
              'My status',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Tap to add status update',
              style: TextStyle(color: Color(0xff818589)),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
              child: const Text(
                'Recent updates',
                style: TextStyle(
                    color: Color(0xff5c6064), fontWeight: FontWeight.bold),
              )),
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3)),
                        child: const CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.green,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/7562313/pexels-photo-7562313.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: const Text(
                        'Hamza',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        'Today, 7:15am',
                        style: TextStyle(color: Color(0xff6a7071)),
                      ),
                    );
                  }))
        ]);
  }
}
