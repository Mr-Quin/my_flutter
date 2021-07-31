import 'package:flutter/material.dart';
import 'sidebar.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [SideBar(), Container()],
    );
  }
}
