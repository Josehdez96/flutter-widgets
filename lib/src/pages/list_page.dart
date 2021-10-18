import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({ Key? key }) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  final List<int> _numberList = [];
  int _finalItem = 0;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _addTenMoreImages();

    _scrollController.addListener(() {

      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _addTenMoreImages();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lists'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _numberList.length,
      itemBuilder: ( context, index) {

        final imgIndex = _numberList[index];

        return FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/500/300/?image=$imgIndex'),
        );
      },
    );
  }

  void _addTenMoreImages() {

    for (var i = 0; i < 10; i++) {
      _numberList.add(_finalItem++);
    }

    setState(() { });
  }
}