import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 150.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          _createSlider(),
          Expanded(child: _createImage())
        ],
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      value: _sliderValue,
      min: 50.0,
      max: 1000.0,
      onChanged: ( value ) => setState(() {
        _sliderValue = value;
      }),
      activeColor: Colors.indigoAccent,
      label: 'Elije un rango',
      divisions: 30,
    );
  }

  Widget _createImage() {
    return Image(
      image: const NetworkImage('https://circleoflight.ie/wp-content/uploads/2020/05/orange_circle_opt.png'),
      width: _sliderValue,
    );
  }
}