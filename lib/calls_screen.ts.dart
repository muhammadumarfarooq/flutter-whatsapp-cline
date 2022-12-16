import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundColor: Color(0xff008069),
              child: Icon(Icons.link),
            ),
            title: Text(
              'Create call link',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Share a link for your WhatsApp call',
              style: TextStyle(color: Color(0xff818589)),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
              child: const Text(
                'Recent',
                style: TextStyle(
                    color: Color(0xff5c6064), fontWeight: FontWeight.bold),
              )),
          Expanded(
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
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
