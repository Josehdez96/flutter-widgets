import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 150.0;
  bool _blockCheck = false;

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
          _createCheckbox(),
          _createSwitch(),
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
      onChanged: (!_blockCheck)
        ? null 
        : ( value ) => setState(() {
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

  Widget _createCheckbox() {
    // return Checkbox(
    //   value: _blockCheck,
    //   onChanged: (state) => setState(() {
    //     _blockCheck = state!;
    //   })
    // );

    return CheckboxListTile(
      title: const Text('Bloquear slider'),
      value: _blockCheck,
      onChanged: (state) => setState(() {
        _blockCheck = state!;
      })
    );
  }

  Widget _createSwitch() {
    // return Switch(
    //   value: _blockCheck,
    //   onChanged: (state) => setState(() {
    //     _blockCheck = state;
    //   })
    // );

    return SwitchListTile(
      title: const Text('Bloquear con switch'),
      value: _blockCheck,
      onChanged: (state) => setState(() {
        _blockCheck = state;
      })
    );
  }
}