



import 'package:estados_app/models/usuario.dart';
import 'package:flutter/cupertino.dart';

class UsuarioService with ChangeNotifier {


  Usuario _usuario;

  Usuario get usuario => this._usuario;

  bool get existeUsuario => (this._usuario != null) ? true : false;


  set usuario( Usuario user ){
    this._usuario = user;
    notifyListeners();
  }

  void cambiarEdad(String edad){
    if(existeUsuario){
      this._usuario.edad = edad;
      notifyListeners();
    }
  }

  void removerUsuario(  ){
    this._usuario = null;
    notifyListeners();

  }

  void agregarProfecion(){
    this._usuario.profeciones.add('Profeción : ${ usuario.profeciones.length +1 }');
    notifyListeners();
  }

}