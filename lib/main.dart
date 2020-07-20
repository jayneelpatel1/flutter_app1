// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: getlist(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("floating button click");
          },
          child: Icon(Icons.add),
          tooltip: 'Add users',
        ),
      ),
    );
  }

  void shownackbar(BuildContext context,String item){
    var snack=SnackBar(
      content: Text("You just tap $item")
    );
    Scaffold.of(context).showSnackBar(snack);
  }


  List<String> getListIteam() {
    var item = List<String>.generate(10, (counter) => "User $counter");
    return item;
  }

  Widget getlist() {
    var listitem = getListIteam();
    var listview = ListView.builder(
        itemCount: listitem.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(listitem[index]),
            onTap: () {
              shownackbar(context,listitem[index]);
            },
          );
        });
    return listview;
  }
}
