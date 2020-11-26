import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:estados_app/models/usuario.dart';


part 'usuario_state.dart';
part 'usuario_event.dart';


class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {

  UsuarioBloc() : super(UsuarioState());

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
    if(event is ActivarUsuario){

      yield state.copyWith(
        usuario: event.usuario
      );
    }else if(event is CambiarEdad){
      yield state.copyWith(
        usuario: state.usuario.copyWith(edad: event.edad) 
      );
    }else if( event is AgregarProfecion ){
      yield state.copyWith(
        usuario: state.usuario.copyWith(
        profeciones: [
          ...state.usuario.profeciones,
          event.prof
        ]
      )
      );

    }else if(event is BorrarUsuario){
      yield state.estadoInicial();
    }
  }

}