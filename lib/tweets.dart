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
    'Welcome To Flutter',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita impedit eos commodi ea accusamus dolorem mollitia sequi',
    'I love Flutter Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita impedit eos commodi ea accusamus dolorem mollitia sequi',
    'Qwerty Lorem ipsum',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita impedit eos commodi ea accusamus dolorem mollitia sequi',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita impedit eos commodi ea accusamus dolorem mollitia sequi',
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
                      top: BorderSide(width: 1, color: Colors.grey),
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
                          Icons.view_stream,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                //
                trailing: PopupMenuButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: const Color.fromARGB(255, 106, 105, 105),
                  child: const Text(
                    '....',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Delete Tweet',
                              style: TextStyle(
                                color: Colors.red,
                              )),
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Pin to your profile',
                              style: TextStyle(color: Colors.white)),
                          Icon(Icons.pin_drop)
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Change who can reply',
                              style: TextStyle(color: Colors.white)),
                          Icon(Icons.reply)
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Add/remove from Lists',
                              style: TextStyle(color: Colors.white)),
                          Icon(Icons.list)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
