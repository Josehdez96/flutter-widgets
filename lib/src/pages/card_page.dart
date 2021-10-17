import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          _type1Card(),
          const SizedBox(height: 30),
          _type2Card()
        ],
      ),
    );
  }

  Widget _type1Card() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos probando con la descipción larga de un subtitulo que puede no ser muy interesante'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {}, 
                child: const Text('Aceptar')
              ),
              TextButton(
                onPressed: () {}, 
                child: const Text('Cancelar')
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _type2Card() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage.assetNetwork(
            placeholder: 'assets/jar-loading.gif',
            image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB7LQV5l92WUb1XSW-XyWLFHW9FVD1FzmENQ&usqp=CAU',
            fadeInDuration: const Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('No se que poner')
          )
        ],
      )
    );
  }
}