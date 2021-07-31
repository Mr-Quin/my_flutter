import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  String _selected = '';

  Widget _makeTile(String title, IconData icon) {
    bool isSelected = title == _selected;

    TextStyle style = isSelected ? TextStyle(color: Colors.cyan) : TextStyle();

    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: style),
      onTap: () {
        setState(() {
          if (isSelected) {
            _selected = '';
          } else {
            _selected = title;
          }
        });
      },
    );
  }

  void _handleTap(String title) {
    setState(() {
      if (title == _selected) {
        _selected = '';
      } else {
        _selected = title;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(left: 30, top: 20),
        children: <Widget>[
          _makeTile('My Info', Icons.person_outline),
          SideBarSection(title: 'Library', children: <Widget>[
            _makeTile('My Imports', Icons.person_outline),
            _makeTile('Mass Editor', Icons.view_list),
          ]),
          SideBarSection(title: 'Activity', children: <Widget>[
            _makeTile('Queue', Icons.wb_cloudy_outlined),
            _makeTile('History', Icons.history),
          ]),
          SideBarSection(title: 'Settings', children: <Widget>[
            _makeTile('General', Icons.settings),
            _makeTile('Media Management', Icons.perm_media),
          ]),
        ],
      ),
    );
  }
}

class SideBarSection extends StatelessWidget {
  const SideBarSection({Key? key, this.title, required this.children})
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
                    title: Text(title!.toUpperCase()),
                    dense: true,
                  )
                : Container()),
            ...children
          ],
        ));
  }
}
