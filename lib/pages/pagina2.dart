import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';



class Pagina2 extends StatelessWidget {
  
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: usuarioService.usuarioStream ,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
            return snapshot.hasData
            ? Text(snapshot.data.nombre)
            : Text('data');
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              child: Text('Establecer usuario', style: TextStyle(color: Colors.white),),
              onPressed: (){
                final nuevoUsuario = new Usuario( nombre: 'Dario', edad: '46'  );
                usuarioService.cargarUsuario(nuevoUsuario);
              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              onPressed: (){
                usuarioService.cambiarEdad('36');
              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Añadir profeción', style: TextStyle(color: Colors.white),),
              onPressed: (){
                
              }
            ),
          ],
        ),
      )
    );
  }
}