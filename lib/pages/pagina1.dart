import 'package:estados_app/bloc/usuario/usuario_bloc.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Pagina1 extends StatelessWidget {
  const Pagina1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.delete), 
            onPressed: (){

              BlocProvider.of<UsuarioBloc>(context).add(BorrarUsuario());

            })
        ],
        title: Text('Pagina 1'),
      ),
      body: BlocBuilder<UsuarioBloc, UsuarioState>(
        builder: ( _ , state) {
          if ( state.existeUsuario ){
            return InformacionUsuario(state.usuario);
          }else{
            return Center(child: Text('No hay información del usuario'),);
          }
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
          ListTile(title: Text('Edad : ${usuario.edad}'),),
          Text('Profeciones', style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          
          ...usuario.profeciones.map(
            (profecion) => ListTile(
              title: Text(profecion),
          )),

        ],
      ),
    );
  }
}