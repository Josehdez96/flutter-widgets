import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlert(context), 
          child: const Text('Mostrar alerta'),
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder()
          )
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: ( context ) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: const Text('Title'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Este es el contenido de la caja de la alerta'),
            FlutterLogo(size: 100)
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('Cancelar')
          ),
          TextButton(
            onPressed: () {}, 
            child: const Text('Aceptar')
          )
        ],
      )
    );
  }
}