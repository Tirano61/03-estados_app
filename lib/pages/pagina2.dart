import 'package:estados_app/bloc/usuario/usuario_bloc.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Pagina2 extends StatelessWidget {
  const Pagina2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    // ignore: close_sinks
    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white),),
              onPressed: (){
                
                final newUser = new Usuario(nombre: 'Dario Ramirez', edad: '46', profeciones: [
                  'FullStack Developer'
                ]);

                usuarioBloc.add(
                  ActivarUsuario(newUser)
                );

              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              onPressed: (){
                usuarioBloc.add(
                  CambiarEdad('30')
                );
              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Añadir profeción', style: TextStyle(color: Colors.white),),
              onPressed: (){
                usuarioBloc.add(

                  AgregarProfecion('Nueva porofesión')
                );
              }
            ),
          ],
        ),
      )
    );
  }
}