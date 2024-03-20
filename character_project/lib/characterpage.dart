// character_page.dart

import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character Name'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side tabs
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Current Tab'),
                    onTap: () {
                      // TODO: change display to selected tab.
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('New Tab'),
                    onTap: () {
                      // TODO: Create new tab, move lower by 1.
                    },
                  ),
                ],
              ),
            ),
          ),
          // Central content area
          Expanded(
            flex: 3,
            child: Center(
              child: Text('This is the Character Page'),
            ),
          ),

          // Circle widget (TODO: move to bottom right)
          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // TODO: Expand right side menu
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
