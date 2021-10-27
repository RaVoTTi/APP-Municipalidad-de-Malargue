import 'package:flutter/material.dart';
import 'package:municipalidad_de_malargue/widgets/widgets.dart';

class LocationPage2 extends StatelessWidget {
  final String urlImage;

  final String title;
  final String schedule;
  final String description;
  final String number;
  final String urlLocation;

  const LocationPage2(
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
    

    return SafeArea(
      child: Stack(
        children: <Widget>[
          AppBar(
            backgroundColor: Colors.white,//Color(0xff6a2b86),
            leading: IconButton(
              icon: Icon(
                Icons.chevron_left,
                size: height * 0.03,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: ImgAppBar(
              function: null,
              urlImage: this.urlImage,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(height * 0.04),
                    bottomRight: Radius.circular(height * 0.04))),
          ),
          Positioned.fill(
              // es clave el fill porque no necesita heigth y width
              // height: height * 0.2,
              // width: width * 0.4,
              top: height * 0.27,
              bottom: height * 0.55,
              left: width * 0.16,
              right: width * 0.16,
              child: Container(
                padding: EdgeInsets.all(height * 0.01),
                height: height * 0.2,
                decoration: BoxDecoration(
                    color: Color(0xff00939d),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                    // ),
                    ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   FachaText(
                     size: 25,
                     title: this.title,
                     color: Colors.white,
                   ),
                   Container(
  
                     child: FachaText(
                       size: 20,
                       title: true ? 'ABIERTO' : 'CERRADO',
                       color: true ? Colors.white : Colors.red,
                       ),
                   )
                 ],
               ), 
              )
              ),

              
        ],
      ),
    );
  }
}
