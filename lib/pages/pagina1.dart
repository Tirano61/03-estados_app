import 'package:flutter/material.dart';



class Pagina1 extends StatelessWidget {
  const Pagina1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: InformacionUsuario(),
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
          ListTile(title: Text('Nombre : '),),
          ListTile(title: Text('Edad : '),),
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