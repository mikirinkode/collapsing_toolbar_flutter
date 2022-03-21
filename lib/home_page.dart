import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // we need to user Sliver app bar
          SliverAppBar(
            backgroundColor: Colors.deepOrange,
            // title: Text("App Bar"),
            floating: true,
            // make toolbar show immediately
            pinned: true,
            // to make the toolbar pinned to its size
            flexibleSpace: FlexibleSpaceBar(

              title: Text("AppBar"),
              background: Image.asset(
                "assets/kocheng.jpeg",
                fit: BoxFit.cover, // to make the image fit
              ),
              // collapseMode: CollapseMode.parallax,
            ),
            leading: Icon(Icons.menu_rounded),
            expandedHeight: 200,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          ),
          generateGridView(),
        ],
      ),
    );
  }

  Widget generateGridView() {
    // because we use sliver app bar
    // we need to use sliver too
    return SliverToBoxAdapter(
      child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 6,
          primary: false,
          shrinkWrap: true,
          // make sure to add this
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Text("Index ke - $index"),
            );
          }),
    );
  }
}
