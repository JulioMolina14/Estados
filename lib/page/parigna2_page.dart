import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
                child: Text(
                  'Establecer Usuario',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue[100],
                onPressed: () {}),
            MaterialButton(
                child: Text(
                  'Cambiar Edad',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue[100],
                onPressed: () {}),
            MaterialButton(
                child: Text(
                  'Añadir Profesiones',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue[100],
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
