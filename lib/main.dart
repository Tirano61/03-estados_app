import 'package:estados_app/pages/pagina1.dart';
import 'package:estados_app/pages/pagina2.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      
      initialRoute: 'pagina1',
      routes: {
        'pagina1': (context) => Pagina1(),
        'pagina2': (context) => Pagina2(),
      },
    );
  }
}