


part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvent {}


class ActivarUsuario extends UsuarioEvent{

  final Usuario usuario;
  ActivarUsuario(this.usuario);

}

class CambiarEdad extends UsuarioEvent{

  final String edad;

  CambiarEdad(this.edad);

}

class AgregarProfecion extends UsuarioEvent{
  final String prof;

  AgregarProfecion(this.prof);
}

class BorrarUsuario extends UsuarioEvent{

  

}


