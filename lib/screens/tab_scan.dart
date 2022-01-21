// import 'package:flutter/material.dart';

// import 'package:municipalidad_de_malargue/widgets/widgets.dart';

// class TabScan extends StatelessWidget {
//   final double height;

//   const TabScan({@required this.height});

//   @override
//   Widget build(BuildContext context) {
//     // Uint8List bytes = Uint8List(0);
//     // TextEditingController _inputController;

//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//         begin: Alignment.bottomCenter,
//         end: Alignment.topCenter,
//         colors: [Color(0xff00939d), Color(0xff2DB3BA)],
//       )),
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 100, horizontal: 30),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             // Image(image: AssetImage('assets/logo_qr.png'), height: 100, width: 100),
//             SizedBox(height: 20),
//             Text(
//               'Ahora vas a poder escanear todos los códigos QR del Municipio.',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: height * 0.1),
//             BtnScan()
//           ],
//         ),
//       ),
//     );
//   }
// }

// //     _scan(TextEditingController _outputController) async {
// //     await Permission.camera.request();
// //     String barcode = await scanner.scanPath(_outputController);
// //     if (barcode == null) {
// //       print('nothing return.');
// //     } else {
// //       _outputController.text = barcode;
// //       openLink(_outputController.text);

// //       // await canLaunch(this._outputController.text) ? await launch(this._outputController.text) : throw 'Could not launch $this._outputController.text';
// //     }
// //   }

// //   }

// // Widget _qrCodeWidget(Uint8List bytes, BuildContext context, Function scan) {
// //   return Container(
// //     decoration: BoxDecoration(
// //         gradient: LinearGradient(
// //       begin: Alignment.bottomCenter,
// //       end: Alignment.topCenter,
// //       colors: [Color(0xff00939d), Color(0xff2DB3BA)],
// //     )),
// //     child: Padding(
// //       padding: EdgeInsets.symmetric(vertical: 190, horizontal: 30),
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.start,
// //         children: [
// //           Image(
// //               image: AssetImage('assets/logo_qr.png'), height: 100, width: 100),
// //           SizedBox(height: 20),
// //           Text(
// //             'Ahora vas a poder escanear todos los códigos QR del Municipio.',
// //             textAlign: TextAlign.center,
// //             style: TextStyle(
// //               color: Colors.white,
// //               fontSize: 18,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //           SizedBox(height: 100),
// //           Column(
// //             children: <Widget>[
// //               _buttonGroup(scan),
// //             ],
// //           ),
// //         ],
// //       ),
// //     ),
// //   );
// // }
// //  Widget _buttonGroup(Function scan) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(horizontal: 30),
// //       child: Row(
// //         children: <Widget>[
// //           Expanded(
// //             flex: 1,
// //             child: SizedBox(
// //               height: 120,
// //               child: InkWell(
// //                 onTap: scan,
// //                 child: Card(
// //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// //                   color: Colors.white,
// //                   child: Column(
// //                     children: <Widget>[
// //                       Expanded(
// //                         flex: 2,
// //                         child: Icon(
// //                           Icons.qr_code_scanner_sharp,
// //                           size: 50,
// //                           color: Color(0xff6a2b84),
// //                         ),
// //                       ),
// //                       Expanded(
// //                           flex: 1,
// //                           child: Text(
// //                             "Escanear Código QR",
// //                             style: TextStyle(color: Color(0xff6a2b84)),
// //                           )), //arreglar
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );

// //   }
// //
