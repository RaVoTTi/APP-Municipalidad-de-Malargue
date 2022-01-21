
// import 'package:flutter/material.dart';
// import 'package:municipalidad_de_malargue/screens/page_comunicados.dart';
// import 'package:municipalidad_de_malargue/screens/page_turismo_alojamientomolles.dart';
// import 'package:municipalidad_de_malargue/screens/page_turismo_cabanasfincas.dart';
// import 'package:municipalidad_de_malargue/screens/page_turismo_departamentos.dart';
// import 'package:municipalidad_de_malargue/screens/page_turismo_hostels.dart';
// import 'package:municipalidad_de_malargue/screens/page_turismo_lugaresvisitar.dart';
// import 'package:municipalidad_de_malargue/screens/page_turismo_restaurantes.dart';
// import 'package:url_launcher/url_launcher.dart';

// const _url = 'https://turismo.malargue.gov.ar/';

// class PageTurismo extends StatefulWidget {
//   PageTurismo() : super();

//   @override
//   _PageTurismoState createState() => _PageTurismoState();
// }

// class _PageTurismoState extends State<PageTurismo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: Text(
//             'Turismo en Malargüe',
//             style: TextStyle(
//               color: Color(0xff000939d),
//             ),
//           ),
//           backgroundColor: Colors.white,
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back,
//               color: Color(0xff00939d),
//             ),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//         ),
//         body: SafeArea(
//           child: Container(
//             padding: EdgeInsets.all(20.0),
//             child: ListView(
//               children: <Widget>[
//                 //Cabañas Fincas

//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => PageTurismoCabanasFincas()),
//                     );
//                   },
//                   child: Container(
//                     padding: EdgeInsets.only(top: 10.0),
//                     width: double.infinity,
//                     height: 150,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           new BoxShadow(
//                             color: Colors.grey,
//                             blurRadius: 3.0,
//                           ),
//                         ],
//                         borderRadius: BorderRadius.circular(20),
//                         image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://www.malargue.gov.ar/wp-content/uploads/2020/12/DSC_3615-scaled.jpg"),
//                             fit: BoxFit.cover)),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           gradient: LinearGradient(
//                               begin: Alignment.bottomRight,
//                               colors: [
//                                 Color(0xff00939d).withOpacity(.9),
//                                 Color(0xff00939d).withOpacity(.2),
//                               ])),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: <Widget>[
//                           Text(
//                             "Cabañas - Fincas",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 23,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),

//                 //Departamentos

//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => PageTurismoDepartamentos()),
//                       );
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 150,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             new BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 3.0,
//                             ),
//                           ],
//                           borderRadius: BorderRadius.circular(20),
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   'https://toribioachaval.com/imagenes/proaimg/propiedad/sitio/562/562614.jpg'),
//                               fit: BoxFit.cover)),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                                 begin: Alignment.bottomRight,
//                                 colors: [
//                                   Color(0xff00939d).withOpacity(.9),
//                                   Color(0xff00939d).withOpacity(.2),
//                                 ])),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: <Widget>[
//                             Text(
//                               "Departamentos",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 23,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 //Hostels

//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => PageTurismoHostels()),
//                       );
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 150,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             new BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 3.0,
//                             ),
//                           ],
//                           borderRadius: BorderRadius.circular(20),
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   'https://hostelmalargue.com/images/ecohostel/nieve.jpg'),
//                               fit: BoxFit.cover)),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                                 begin: Alignment.bottomRight,
//                                 colors: [
//                                   Color(0xff00939d).withOpacity(.9),
//                                   Color(0xff00939d).withOpacity(.2),
//                                 ])),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: <Widget>[
//                             Text(
//                               "Hostels",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 23,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 //Restaurantes

//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => PageTurismoRestaurantes()),
//                       );
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 150,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             new BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 3.0,
//                             ),
//                           ],
//                           borderRadius: BorderRadius.circular(20),
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   'https://www.malargue.gov.ar/wp-content/uploads/2020/08/cabanas-la-valtellina.jpg'),
//                               fit: BoxFit.cover)),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                                 begin: Alignment.bottomRight,
//                                 colors: [
//                                   Color(0xff00939d).withOpacity(.9),
//                                   Color(0xff00939d).withOpacity(.2),
//                                 ])),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: <Widget>[
//                             Text(
//                               "Restaurantes",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 23,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 //Alojamiento en Los Molles

//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => PageTurismoAlojamientoMolles()),
//                       );
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 150,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             new BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 3.0,
//                             ),
//                           ],
//                           borderRadius: BorderRadius.circular(20),
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   'https://www.malargue.gov.ar/wp-content/uploads/2021/01/los-molles.jpg'),
//                               fit: BoxFit.cover)),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                                 begin: Alignment.bottomRight,
//                                 colors: [
//                                   Color(0xff00939d).withOpacity(.9),
//                                   Color(0xff00939d).withOpacity(.2),
//                                 ])),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: <Widget>[
//                             Text(
//                               "Alojamiento en Los Molles",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 23,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 //Lugares para visitar

//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => PageTurismoLugaresVisitar()),
//                       );
//                     },
//                     child: Container(
//                       width: double.infinity,
//                       height: 150,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             new BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 3.0,
//                             ),
//                           ],
//                           borderRadius: BorderRadius.circular(20),
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   'https://www.malargue.gov.ar/wp-content/uploads/2021/03/WhatsApp-Image-2021-03-03-at-12.23.19.jpeg'),
//                               fit: BoxFit.cover)),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                                 begin: Alignment.bottomRight,
//                                 colors: [
//                                   Color(0xff00939d).withOpacity(.9),
//                                   Color(0xff00939d).withOpacity(.2),
//                                 ])),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: <Widget>[
//                             Text(
//                               "Lugares para visitar",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 23,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),

//                 //Sitio Web

//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: GestureDetector(
//                     onTap: () => _linkSitioWebTurismo(),
//                     child: Container(
//                       width: double.infinity,
//                       height: 150,
//                       decoration: BoxDecoration(
//                           boxShadow: [
//                             new BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 3.0,
//                             ),
//                           ],
//                           borderRadius: BorderRadius.circular(20),
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   'https://www.malargue.gov.ar/wp-content/uploads/2021/10/descarga-2.jpg'),
//                               fit: BoxFit.cover)),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                                 begin: Alignment.bottomRight,
//                                 colors: [
//                                   Color(0xff00939d).withOpacity(.9),
//                                   Color(0xff00939d).withOpacity(.2),
//                                 ])),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: <Widget>[
//                             Text(
//                               "Visita nuestro sitio web",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 23,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

// void _linkSitioWebTurismo() async => await canLaunch(_url)
//     ? await launch(_url)
//     : throw 'Could not launch $_url';
