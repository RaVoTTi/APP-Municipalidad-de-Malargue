import 'package:flutter/material.dart';



import 'package:municipalidad_de_malargue/screens/page_home.dart';

// import 'package:municipalidad_de_malargue/widgets/widgets.dart';
// import 'package:municipalidad_de_malargue/screens/noticias.dart';
// import 'package:municipalidad_de_malargue/screens/servicios.dart';
// import 'package:municipalidad_de_malargue/screens/comunicados.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),

          // 'servicios' : ( _ ) => Servicios(),
          // 'comunicados' : ( _ ) => Comunicados(),
          // 'noticias' : ( _ ) => RSSDemo(),
        },
      
    );
  }
}
