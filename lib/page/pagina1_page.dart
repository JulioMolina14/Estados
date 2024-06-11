import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mprovider/controllers/usuario_controller.dart';
import 'package:mprovider/models/usuario.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioController = Get.put(UsuarioController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Pagina 1',
          ),
        ),
      ),
      body: Obx(() => usuarioController.existeUsuario.value
          ? Informacion_Usuario(
              usuario: usuarioController.user.value,
            )
          : No_Usuario()),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        child: Icon(Icons.navigate_next),
        onPressed: () => Get.toNamed('pagina2',
            arguments: {'nombre': 'Aleja', 'edad': '22'}),
      ),
    );
  }
}

class No_Usuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('NO EXISTE USER'),
      ),
    );
  }
}

class Informacion_Usuario extends StatelessWidget {
  final Usuario usuario;

  const Informacion_Usuario({super.key, required this.usuario});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Nombre : ${usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad : ${usuario.edad}'),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Profesion  1 :'),
          ),
          ListTile(
            title: Text('Profesion  2 :'),
          ),
          ListTile(
            title: Text('Profesion  3 :'),
          ),
        ],
      ),
    );
  }
}
