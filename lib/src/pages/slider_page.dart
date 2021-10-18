import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        children: [
          _createSlider()
        ],
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      value: _sliderValue,
      onChanged: ( value ) => setState(() {
        _sliderValue = value;
      }),
    );
  }
}