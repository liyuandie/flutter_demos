import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  ExpansionPanelListDemo({Key key}) : super(key: key);

  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  List<int> myList;
  List<ExpandState> expandStateList;

  _ExpansionPanelListDemoState() {
    myList = new List();
    expandStateList = new List();
    for (int i = 0; i < 10; i++) {
      myList.add(i);
      expandStateList.add(ExpandState(i, false));
    }
  }
  _setCurrentIndex(int index, isExpanded) {
    setState(() {
      expandStateList.forEach((item) {
        if (item.index == index) {
          item.isOpen = !isExpanded;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel List'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bol) {
            _setCurrentIndex(index, bol);
          },
          children: myList.map((index) {
            return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('This is NO.$index'),
                  );
                },
                body: ListTile(
                  title: Text('expansion NO.$index'),
                ),
                isExpanded: expandStateList[index].isOpen);
          }).toList(),
        ),
      ),
    );
  }
}

class ExpandState {
  var index;
  var isOpen;
  ExpandState(
    this.index,
    this.isOpen,
  );
}
