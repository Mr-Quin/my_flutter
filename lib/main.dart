// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MaterialApp(home: App()));

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 50, child: SideBar());
  }
}

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(left: 30, top: 20),
        children: const <Widget>[
          DrawerSection(
              children: const <Widget>[ListTile(title: Text('My Info'))]),
          DrawerSection(title: 'Library', children: const <Widget>[
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('My Imports'),
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Mass Editor'),
            ),
          ]),
          DrawerSection(title: 'Activity', children: const <Widget>[
            ListTile(
              leading: Icon(Icons.wb_cloudy_outlined),
              title: Text('Queue'),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
            ),
          ]),
          DrawerSection(title: 'Setting', children: const <Widget>[
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('General'),
            ),
            ListTile(
              leading: Icon(Icons.perm_media),
              title: Text('Media Management'),
            ),
          ]),
        ],
      ),
    );
  }
}

class DrawerSection extends StatelessWidget {
  const DrawerSection({Key? key, this.title, required this.children})
      : super(key: key);

  final String? title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            // if title is not null, display a title tile
            (title != null
                ? ListTile(
                    title: Text(title!),
                    dense: true,
                  )
                : Container()),
            ...children
          ],
        ));
  }
}
