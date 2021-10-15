import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/providers/menu_provider.dart';
import 'package:flutter_widgets/src/utils/icons_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {

        return ListView(
          children: _listItems(context, snapshot.data),
        );
      }
    );
  }

  List<Widget> _listItems(BuildContext context, List<dynamic>? data) {

    if (data != null) {
      return data.map((option) =>
      Column(
        children: [
          ListTile(
            title: Text(option.texto),
            leading: getIcon(option.icon),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.indigo),
            onTap: () {
              Navigator.pushNamed(context, option.ruta);
            },
          ),
          const Divider()
        ],
      )).toList();
    } else {
      return [
        const SizedBox(height: 30),
        const Center(
          child: CircularProgressIndicator(),
        )
      ];
    }
    

    // return [
    //   const ListTile( title: Text('Hola')),
    //   const ListTile( title: Text('Hola')),
    //   const ListTile( title: Text('Hola')),
    // ];
  }
}