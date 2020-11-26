

import 'package:estados_app/models/usuario.dart';
import 'package:flutter/animation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'usuario_state.dart';



class UsuarioCubit extends Cubit<UsuarioState> {

  UsuarioCubit() : super(UsuarioInicial());

  void seleccionarUsuario(Usuario user){
    emit( UsuarioActivo(user) );
  }

  void cambiarEdad(String edad){

    final currentState = state;
    if(currentState is UsuarioActivo){
      final newUser = currentState.usuario.copyWith(edad: edad);
      emit(UsuarioActivo(newUser));
    }
    
  }

  void agregarProfesion(){
     final currentState = state;
    if(currentState is UsuarioActivo){
      final prof = [
        ...currentState.usuario.profeciones,
        'Profesión : ${ currentState.usuario.profeciones.length +1 }'
      ];
      final newUser = currentState.usuario.copyWith(profeciones: prof);
      emit(UsuarioActivo(newUser));
    }
  }

  void borrarUsuario(){
    emit(UsuarioInicial());

  }


}