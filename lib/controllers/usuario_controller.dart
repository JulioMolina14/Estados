import 'package:get/get.dart';
import 'package:mprovider/models/usuario.dart';

class UsuarioController {
  var existeUsuario = false.obs;
  var user = Usuario().obs;

  void cargarUsuario(Usuario usuario) {
    this.existeUsuario.value = true;
    this.user.value = usuario;
  }
}
