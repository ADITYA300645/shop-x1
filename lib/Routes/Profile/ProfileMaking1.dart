import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
          preferredSize: const Size.fromHeight(2.0),
        ),
        elevation: 0.0,
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        actions: [TextButton(onPressed: () {}, child: const Text("2/2"))],
      ),
      body: Center(
          child: OutlinedButton(
        style: const ButtonStyle(),
        child: const Text("Submit"),
        onPressed: () {},
      )),
    );
  }
}
