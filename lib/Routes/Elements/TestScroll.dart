import 'package:flutter/material.dart';

class TestScroll extends StatefulWidget {
  const TestScroll({Key? key}) : super(key: key);

  @override
  State<TestScroll> createState() => _TestScrollState();
}

class _TestScrollState extends State<TestScroll> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.only()),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(color: Colors.redAccent),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(color: Colors.teal),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(color: Colors.amber),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(color: Colors.greenAccent),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(color: Colors.purple),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(color: Colors.pink),
        )
      ],
    );
  }
}
