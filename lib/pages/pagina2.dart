import 'package:flutter/material.dart';



class Pagina2 extends StatelessWidget {
  const Pagina2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                
              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              onPressed: (){
                
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