import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  const ExpansionTileDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile Demo'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('Expansion Tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          initiallyExpanded: true,
          children: <Widget>[
            ListTile(
              title: Text('list tile'),
              subtitle: Text('subtitle'),
            )
          ],
        ),
      ),
    );
  }
}
