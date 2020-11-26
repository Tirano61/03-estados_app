import 'package:estados_app/bloc/usuario/usuario_cubit.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Pagina2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final usuarioCubit = context.watch<UsuarioCubit>();

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
                final newUser = new Usuario(
                  nombre: 'Dario Ramiorez',
                  edad: '46',
                  profeciones:[
                    'FullStack Developer',
                    'Jugador veterano'
                  ]
                );

                usuarioCubit.seleccionarUsuario(newUser);

              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              onPressed: (){
                usuarioCubit.cambiarEdad('30');
              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Añadir profeción', style: TextStyle(color: Colors.white),),
              onPressed: (){
                usuarioCubit.agregarProfesion();
              }
            ),
          ],
        ),
      )
    );
  }
}