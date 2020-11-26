import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Pagina2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioService>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title:  usuarioService.existeUsuario
        ? Text('${ usuarioService.usuario.nombre }')
        : Text('Pagina 2')
        
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
                  nombre: 'Dario', 
                  edad: '46',
                  profeciones: ['FullStack Developer', 'Video Gamer Experto']
                );
                usuarioService.usuario = newUser;
              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              onPressed: (){
                
                usuarioService.cambiarEdad('34');

              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Añadir profeción', style: TextStyle(color: Colors.white),),
              onPressed: (){
                usuarioService.agregarProfecion();
              }
            ),
          ],
        ),
      )
    );
  }
}