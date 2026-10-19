import 'package:flutter/material.dart';
import 'package:vasquez_930/component/globalappbarcomponent.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({Key? key}) : super(key: key);

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GlobalAppbarComponent(
        title: Text("News Feed"),
      ),
      body: Column(
        children: [Text("NewsFeedScreen")],
      ),
    );
  }
}
