import 'package:flutter/material.dart';

import 'replies.dart';
import 'tweets.dart';
import 'mediapage.dart';
import 'likes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Twitter Profile Clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        toolbarHeight: 80,
        actions: [
          IconButton(onPressed: (() {}), icon: const Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CircleAvatar(
                    radius: 35,
                    child: Icon(Icons.person_2_outlined),
                  ),
                  CircleAvatar(
                    radius: 35,
                    child: Icon(Icons.person_2_outlined),
                  ),
                ],
              ),
            ),
            // const ListTile(
            //   leading: Icon(
            //     Icons.percent,
            //     color: Colors.red,
            //   ),
            // ),
            const BodyTab(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.speaker), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.inbox_outlined), label: 'Home')
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class BodyTab extends StatefulWidget {
  const BodyTab({super.key});

  @override
  State<BodyTab> createState() => _BodyTabState();
}

class _BodyTabState extends State<BodyTab> with TickerProviderStateMixin {
  late TabController tabControll;

  @override
  void initState() {
    tabControll = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabControll,
          tabs: const [
            Tab(
              text: 'Tweets',
            ),
            Tab(
              text: 'Replies',
            ),
            Tab(
              text: 'Media',
            ),
            Tab(
              text: 'Likes',
            ),
          ],
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(115, 0, 0, 0),
          child: TabBarView(controller: tabControll, children: const [
            Tweets(),
            Replies(),
            MediaPage(),
            Likes(),
          ]),
        ),
      ],
    );
  }
}
