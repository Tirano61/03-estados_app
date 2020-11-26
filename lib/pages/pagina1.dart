import 'package:estados_app/bloc/usuario/usuario_cubit.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Pagina1 extends StatelessWidget {
  const Pagina1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final usuarioCubit = context.watch<UsuarioCubit>();

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.ac_unit), onPressed: (){
            usuarioCubit.borrarUsuario();
          })
        ],
        title: Text('Pagina 1'),
      ),
      body: BodyScaffold(),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.adb),
        onPressed: (){
          Navigator.pushNamed(context, 'pagina2');
        },
      ),
    );
    
  }
}

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit, UsuarioState>(builder: ( _ , state) {  

      switch (state.runtimeType) {
        case UsuarioInicial:
          return Center(child: Text('No hay informacion del usuario'),);
          break;
        case UsuarioActivo: return InformacionUsuario((state as UsuarioActivo).usuario);
          break;
        default: return Center(child: Text('Estado no reconocido'),);
      }
      // if(state is UsuarioInicial){
      //   return Center(child: Text('No hay informacion del usuario'),);
      // }else if( state is UsuarioActivo){
      //   return InformacionUsuario(state.usuario);
      // }else{
      //   return Center(child: Text('Estado no reconocido'),);
      // }

    },);
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
          ListTile(title: Text('Nombre : ${ usuario.nombre }'),),
          ListTile(title: Text('Edad : ${ usuario.edad }'),),
          Text('Profeciones', style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ...usuario.profeciones.map(
            (profecion) => ListTile(title: Text(profecion),)).toList()

        ],
      ),
    );
  }
}