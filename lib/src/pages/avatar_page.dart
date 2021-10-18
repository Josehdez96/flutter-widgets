import 'dart:math';

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
      body: const _CustomAnimatedContainer(),
    );
  }
}

class _CustomAnimatedContainer extends StatefulWidget {
  const _CustomAnimatedContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<_CustomAnimatedContainer> createState() => _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<_CustomAnimatedContainer> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            curve: Curves.fastOutSlowIn,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
            ),
          ),
        ),
        Positioned(
          bottom: 25,
          right: 25,
          child: FloatingActionButton(
            onPressed: () => changeShape(),
            child: const Icon(Icons.play_arrow),
          )
        )
      ],
    );
  }

  void changeShape() {

    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(400).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255), 
        random.nextInt(255), 
        random.nextInt(255), 
        1
      );
      _borderRadius = BorderRadius.circular(random.nextInt(45).toDouble());
    });
  }
}