import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:municipalidad_de_malargue/helpers/func_open_link.dart';
import 'package:municipalidad_de_malargue/screens/page_noticias.dart';
import 'package:municipalidad_de_malargue/screens/page_servicios.dart';
import 'package:municipalidad_de_malargue/screens/page_turismo.dart';

import 'package:municipalidad_de_malargue/widgets/widgets.dart';

Map<String, String> _urls = {
  'turismo': 'https://turismo.malargue.gov.ar/',
  'thesaurus': 'https://thesaurus.malargue.gov.ar/',
  'terminal': 'https://terminal.malargue.gov.ar/',
  'Infogov': 'https://infogov.com.ar/bonos/malargue/#/login?returnUrl=%2F',
  'HCD': 'https://hcd.malargue.gov.ar/',
  'chatBot': 'http://chatbot.munimalargue.online/',
  'rentas': 'https://infogov.com.ar/rentas/malargue/',
  'turismo': 'https://infogov.com.ar/rentas/malargue/',

};

class TabInicio extends StatelessWidget {
  final double height;
  final double width;

  const TabInicio({@required this.height, @required this.width});

  @override
  Widget build(BuildContext context) {
    final iconSize = height * 0.05;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Slider Principal//
          CarouselSlider(
            options: CarouselOptions(
              height: this.height * 0.2,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              enableInfiniteScroll: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            items: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTurismo()),
                    );
                },
                child: CardCarousel(
                  urlImage:
                      'https://www.malargue.gov.ar/wp-content/uploads/2021/04/turismo.jpg', function: null,
                ),
              ),
              CardCarousel(
                function: () => openLink(_urls['thesaurus']),
                urlImage:
                    'https://www.malargue.gov.ar/wp-content/uploads/2021/04/THESAURUS.jpg',
              ),
              CardCarousel(
                function: () => openLink(_urls['terminal']),
                urlImage:
                    'https://www.malargue.gov.ar/wp-content/uploads/2021/04/terminal.jpg',
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          //Botonera 1 - Servicios, Bono Sueldo, HCD//
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BtnGenerico(
                function: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Servicios()),
                    ),
                name: ("Servicios"),
              ),
              BtnGenerico(
                function: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RSSDemo()),
                    ),
                name: ("Últimas Noticias"),
              ),
              BtnGenerico(
                function: () => openLink(_urls['rentas']),
                name: ("Rentas"),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          //Slider 2//
          CarouselSlider(
            options: CarouselOptions(
              height: this.height * 0.28,
              aspectRatio: 16 / 9,
              viewportFraction: 0.90,
              enableInfiniteScroll: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            items: [
              CardCarousel(
                  function: () => openLink(_urls['chatBot']),
                  urlImage:
                      'https://www.malargue.gov.ar/wp-content/uploads/2021/04/ezgif.com-gif-maker-1.gif'),
              // fit: BoxFit.cover,),
            ],
          ),

          //Botonera 2 - //

          Container(
            margin: EdgeInsets.symmetric(vertical: height * 0.01),
            child: Column(children: <Widget>[
            //   CarouselSlider(
            //   options: CarouselOptions(
            //     height: height * 0.105,
            //     aspectRatio: 16 / 9,
            //     viewportFraction: 0.9,
            //     enableInfiniteScroll: false,
            //     autoPlay: true,
            //     autoPlayInterval: Duration(seconds: 3),
            //     autoPlayAnimationDuration: Duration(milliseconds: 800),
            //     autoPlayCurve: Curves.fastOutSlowIn,
            //     enlargeCenterPage: true,
            //   ),
            //   items: [
            //     CardViolet(name: 'Vacunación 2021', function: () => openLink(_urls['turismo']),),
            //     // CardViolet(name: 'Normativa Provincial', function: () => openLink(_urls['provincia'])),
            //     // CardViolet(name: 'Normativa Nacional', function: () => openLink(_urls['nacion']),)
            //   ],
            // ),
            //Slider 2//

CarouselSlider(
                options: CarouselOptions(
                  height: height * 0.4,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
                items: [
                CardCarousel(urlImage: 'https://www.malargue.gov.ar/wp-content/uploads/2020/03/imagenes_cuidados-03.png', function: null, cover: true,),
                CardCarousel(urlImage: 'https://www.malargue.gov.ar/wp-content/uploads/2020/03/imagenes_cuidados-02a.png', function: null, cover: true),
                CardCarousel(urlImage: 'https://www.malargue.gov.ar/wp-content/uploads/2020/03/imagenes_cuidados-03.png', function: null,  cover: true),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconGeneric(
                    icon: 'peopleArrows',
                    size: iconSize,
                  ),
                  IconGeneric(
                    icon: 'handsWash',
                    size: iconSize,
                  ),
                  IconGeneric(
                    icon: 'headSideMask',
                    size: iconSize,
                  ),
                  IconGeneric(
                    icon: 'handshakeSlash',
                    size: iconSize,
                  ),
                ],
              ),
          
            ]),
          ),
        ],
      ),
    );
  }
}

