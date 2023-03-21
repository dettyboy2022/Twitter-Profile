import 'package:flutter/material.dart';

class Tweets extends StatefulWidget {
  const Tweets({super.key});

  @override
  State<Tweets> createState() => _TweetsState();
}

class _TweetsState extends State<Tweets> {
  var tweets = [
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita impedit eos commodi ea accusamus dolorem mollitia sequi voluptates.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita impedit eos commodi ea accusamus dolorem mollitia sequi voluptates.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita impedit eos commodi ea accusamus dolorem mollitia sequi voluptates.',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita impedit eos commodi ea accusamus dolorem mollitia sequi voluptates.',
    5,
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
    'I love Flutter',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 50),
      child: ListView.builder(
          itemCount: tweets.length,
          itemBuilder: ((context, index) {
            var currentIteration = tweets[index];

            return Container(
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.5, color: Colors.grey),
                      bottom: BorderSide(width: 0.5, color: Colors.grey))),
              child: ListTile(
                onTap: (() {}),
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: const Text(
                  '@Username',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$currentIteration',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.chat,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.heart_broken_outlined,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.logo_dev,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.local_activity_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                //
                trailing: PopupMenuButton(
                  color: Colors.white,
                  child: const Text(
                    '....',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      child: Text('Delete'),
                    ),
                    const PopupMenuItem(
                      child: Text('Pin to your profile'),
                    ),
                    const PopupMenuItem(
                      child: Text('Change who can reply'),
                    ),
                    const PopupMenuItem(
                      child: Text('Add/remove from Lists'),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
