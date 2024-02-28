import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mprovider/controllers/usuario_controller.dart';
import 'package:mprovider/models/usuario.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioController = Get.find<UsuarioController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                  color: Colors.amberAccent,
                  child: Text(
                    'Establecer Usuario',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    usuarioController.cargarUsuario(Usuario(
                      edad: 25,
                      nombre: 'Julio',
                    ));
                  }),
              MaterialButton(
                  child: Text(
                    'Cambiar Edad',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.amberAccent,
                  onPressed: () {}),
              MaterialButton(
                  child: Text(
                    'Añadir Profesiones',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.amberAccent,
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
