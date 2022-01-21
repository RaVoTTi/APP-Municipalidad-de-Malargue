import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:municipalidad_de_malargue/helpers/func_open_link.dart';
import 'package:municipalidad_de_malargue/widgets/widgets.dart';




Map<String, String> _urls = {
'vacunacion' : 'https://www.mendoza.gov.ar/vacunacion-covid-19/',
'provincia'  :
    'https://www.mendoza.gov.ar/boletinoficial/separata-coronavirus-covid-19-2/',
'nacion'  :
    'https://www.boletinoficial.gob.ar/detalleAviso/primera/230245/20200608',
};

class TabCovid19 extends StatelessWidget {
  final double height;

  const TabCovid19({@required this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 45.0),
          children: <Widget>[
            // Slider Principal//
            CarouselSlider(
              options: CarouselOptions(
                height: height * 0.105,
                aspectRatio: 16 / 9,
                viewportFraction: 0.9,
                enableInfiniteScroll: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: [
                CardViolet(name: 'Vacunación 2021', function: () => openLink(_urls['vacunacion']),),
                CardViolet(name: 'Normativa Provincial', function: () => openLink(_urls['provincia'])),
                CardViolet(name: 'Normativa Nacional', function: () => openLink(_urls['nacion']),)
              ],
            ),
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
          
          ],
        
      ),
    );
  }
}

