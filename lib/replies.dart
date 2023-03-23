import 'package:flutter/material.dart';
import 'package:twitter/tweets.dart';

class Replies extends StatefulWidget {
  const Replies({super.key});

  @override
  State<Replies> createState() => _RepliesState();
}

class _RepliesState extends State<Replies> {
  @override
  Widget build(BuildContext context) {
    return const Tweets(
      // height: 500,
    );
  }
}
