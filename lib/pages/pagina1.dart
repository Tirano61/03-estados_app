import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';

import 'package:estados_app/services/usuario_service.dart';


class Pagina1 extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: StreamBuilder(
        stream: usuarioService.usuarioStream ,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
          return  ( snapshot.hasData )
          ? InformacionUsuario(snapshot.data)
          : Center(child: Text('No hay información del usuario'),);
        },
      ),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.adb),
        onPressed: (){
          Navigator.pushNamed(context, 'pagina2');
        },
      ),
    );
    
  }
}

class InformacionUsuario extends StatelessWidget {

  final Usuario usuario;

  const InformacionUsuario(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title: Text('Nombre : ${usuario.nombre}'),),
          ListTile(title: Text('Edad :  ${usuario.edad}'),),
          Text('Profeciones', style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title: Text('Profeción 1 : '),),
          ListTile(title: Text('Profeción 2 : '),),
          ListTile(title: Text('Profeción 3 : '),),

        ],
      ),
    );
  }
}