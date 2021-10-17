import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar page'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
            child: Text('JD'),
            backgroundColor: Colors.brown,
          ),
          )
        ],
      ),
    );
  }
}