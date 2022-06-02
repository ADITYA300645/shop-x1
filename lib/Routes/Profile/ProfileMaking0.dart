import 'package:flutter/material.dart';

import './ProfileMaking1.dart';

class ProfileMaking extends StatefulWidget {
  const ProfileMaking({Key? key}) : super(key: key);

  @override
  State<ProfileMaking> createState() => _ProfileMakingState();
}

class _ProfileMakingState extends State<ProfileMaking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
          preferredSize: const Size.fromHeight(2.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        actions: [TextButton(onPressed: () {}, child: const Text("1/2"))],
      ),
      body: Container(
          // margin: const EdgeInsetsDirectional.fromSTEB(30, 20, 10, 10),
          alignment: AlignmentDirectional.topCenter,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Join The", style: TextStyle(fontSize: 24)),
                    Text(" Crew ",
                        style: TextStyle(fontSize: 24, color: Colors.teal)),
                    Text("Register With Us!", style: TextStyle(fontSize: 24))
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(160),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(511, 0, 103, 109),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlineButton(
                      color: Colors.teal,
                      borderSide: BorderSide(color: Colors.teal, width: 1.5),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      onPressed: () {},
                      child: const Text("Previous"),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    RaisedButton(
                        color: Colors.teal,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 40),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageOne()));
                        },
                        child: const Text("Next"))
                  ],
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          )),
    );
  }
}
