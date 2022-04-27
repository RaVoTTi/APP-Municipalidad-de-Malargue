import 'package:flutter/material.dart';

// import 'package:municipalidad_de_malargue/screens/tab_ubicaciones.dart';
// import 'package:municipalidad_de_malargue/helpers/func_open_link.dart';

import 'package:municipalidad_de_malargue/widgets/widgets.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:municipalidad_de_malargue/screens/tab_covid19.dart';
import 'package:municipalidad_de_malargue/screens/tab_inicio.dart';
import 'package:municipalidad_de_malargue/screens/tab_telefono.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final iconSize = height * 0.035;
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: SafeArea(
        child: Scaffold(
          endDrawer: NavigationDrawerWidget(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(height * 0.25),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Builder(
                builder: (context) => AppBar(
                    // excludeHeaderSemantics: false,
                    // toolbarHeight: height * 0.1,
                    backgroundColor: Colors.white,
                    elevation: 0.0,
                    flexibleSpace: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/cabecera.jpg'),
                                fit: BoxFit.fill))),
                    actions: <Widget>[
                      BtnRedes(
                        name: 'Facebook',
                      ),
                      BtnRedes(name: 'Twitter'),
                      BtnRedes(name: 'Instagram'),
                      BtnRedes(name: 'Youtube'),
                      BtnRedes(
                        name: 'Radio 94.5 FM Municipal',
                      ),
                      // SizedBox(width: 30)
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.stream,
                            color: Color(0xff00939d),
                          ),
                          tooltip: 'Menú',
                          onPressed: () {
                            Scaffold.of(context).openEndDrawer();
                          })
                    ],
                    bottom: TabBar(
                      unselectedLabelColor: Color(0xff00939d),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff00939d)),
                      tabs: [
                        Container(
                            margin: EdgeInsets.all(3),
                            height: height * 0.07,
                            child: Tab(
                              icon: Icon(
                                Icons.phone,
                                size: iconSize,
                              ),
                              text: "Teléfonos",
                              iconMargin: EdgeInsets.all(2),
                            )),
                        Container(
                          height: height * 0.07,
                          child: Tab(
                            icon: Icon(
                              Icons.home,
                              size: iconSize,
                            ),
                            text: "Inicio",
                            iconMargin: EdgeInsets.all(2),
                          ),
                        ),
                        // Container(
                        //   height: height * 0.07,
                        //   child: Tab(
                        //     icon: Icon(
                        //   Icons.qr_code_scanner,
                              
                        //       size: iconSize,
                        //     ),
                        //     text: "Escaner QR",
                        //     iconMargin: EdgeInsets.all(2),
                        //   ),
                        // ),
                        // Container(
                        //   height: height * 0.07,
                        //   child: Tab(
                        //     icon: Icon(
                        //       Icons.directions_bus,
                        //       size: iconSize,
                        //     ),
                        //     text: "Ubicaciones",
                        //     iconMargin: EdgeInsets.all(2),
                        //   ),
                        // )
                      ],
                    )),
              ),
            ),
          ),
          body: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              TabTelefono(
                height: height,
                width: width,
              ),
              TabInicio(height: height, width: width),
              // TabScan(height: height),
              // TabUbicaciones(height: height)
            ],
          ),
        ),
      ),
    );
  }
}
