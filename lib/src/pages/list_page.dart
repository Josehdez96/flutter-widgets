import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({ Key? key }) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  final List<int> _numberList = [];
  int _finalItem = 0;
  bool _isLoading = false;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _addTenMoreImages();

    _scrollController.addListener(() {

      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lists'),
      ),
      body: Stack(
        children: [
          _createList(),
          _createLoading()
        ],
      ),
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

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator()
            ],
          ),
          const SizedBox(height: 15)
        ],
      );
    } else {
      return Container();
    }
  }

  void _addTenMoreImages() {
    for (var i = 0; i < 10; i++) {
      _numberList.add(_finalItem++);
    }

    setState(() { });
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() { });
    return Timer(
      const Duration(seconds: 2),
      httpResponse
    );
  }

  void httpResponse() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 200)
    );
    _addTenMoreImages();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}