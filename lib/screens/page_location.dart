import 'package:flutter/material.dart';
import 'package:municipalidad_de_malargue/helpers/func_open_link.dart';
import 'package:municipalidad_de_malargue/screens/Animation/FadeAnimation.dart';
import 'package:municipalidad_de_malargue/widgets/widgets.dart';

class LocationPage extends StatelessWidget {
  final String urlImage;

  final String title;
  final String schedule;
  final String description;
  final String number;
  final String urlLocation;

  const LocationPage(
      {@required this.urlImage,
      @required this.title,
      @required this.schedule,
      @required this.description,
      @required this.number,
      @required this.urlLocation});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final padding = height * 0.02;
    print(padding);
    return SafeArea(
        child: Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
        ),
        FadeAnimation(
          1,
          child: ImgTelefonos(
            heightImage: height * 0.45,
            urlImage: urlImage,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.fromLTRB(padding, padding, padding, height * 0.04),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(height * 0.05),
                    topRight: Radius.circular(height * 0.05))),
            height: height * 0.57,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _description(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BtnGenerico(
                      name: 'Llamar',
                      function: () => openLink(this.number),
                      width: width * 0.3,
                    ),
                    BtnGenerico(
                      name: 'Guiar',
                      function: () => openLink(this.urlLocation),
                      width: width * 0.3,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  Widget _description() {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FachaText(
          title: this.title,
          size: 30,
          weight: FontWeight.bold,
        ),
        SizedBox(height: 15),
        Row(
          children: [
            FachaText(
              title: 'Horarios: ',
              size: 20,
              weight: FontWeight.w400,
            ),
            FachaText(
              title: this.schedule,
              size: 20,
              weight: FontWeight.bold,
            ),
          ],
        ),
        SizedBox(height: 10),
        FachaText(
          title: this.description,
          size: 20,
          weight: FontWeight.w300,
        ),
      ],
    );
  }
}
