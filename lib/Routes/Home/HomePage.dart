import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shope/Routes/TabScreens/HomeTab.dart';

class HomePage extends StatefulWidget {
  String PersonName;
  HomePage(this.PersonName);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
          Color.fromRGBO(0, 73, 160, 1),
          Color.fromRGBO(28, 111, 170, 1)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter))),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        elevation: 0,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                  color: Color.fromRGBO(28, 111, 170, 1),
                  icon: Icon(Icons.edit, size: 16),
                  onPressed: () {}),
              expandedHeight: 220,
              // stretch: true,
              // floating: true,
              pinned: false,
              toolbarHeight: 50,
              collapsedHeight: 85,
              stretchTriggerOffset: 25,
              backgroundColor: Color.fromRGBO(28, 111, 170, 1),
              flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color.fromRGBO(49, 125, 177, 0.0),
                          Color.fromRGBO(207, 230, 233, 1),
                        ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                  collapseMode: CollapseMode.parallax,
                  centerTitle: true,
                  expandedTitleScale: 1.2,
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color.fromRGBO(0, 117, 201, 1.0),
                                  width: 3),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://picsum.photos/250?image=9"))),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Welcome Back",
                                style: TextStyle(
                                    letterSpacing: 4,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800)),
                            Text(widget.PersonName.length == 0
                                ? "NEW HERE"
                                : widget.PersonName)
                          ],
                        )
                      ],
                    ),
                  )),
            ),
            SliverToBoxAdapter(
              child: HomeTab(),
            ),
          ],
        ),
      ),
    );
  }
}
