import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final options = ['Uno', 'Dos', 'Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola'),
      ),
      body: ListView(
        children: _shortCreateItems()
      ),
    );
  }

  List<Widget> _createItems() {

    List<Widget> myList = [];

    for (String item in options) {
      final tempWidget = ListTile(
        title: Text(item),
      );

      myList..add(tempWidget)
            ..add(const Divider());
    }

    return myList;
  }


  List<Widget> _shortCreateItems() {
    return options.map((item) =>
      Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: const Text('Subtitle'),
            trailing: const Icon(Icons.reorder_outlined),
          ),
          const Divider()
        ],
      )).toList();
  }
}
