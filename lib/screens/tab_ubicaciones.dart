import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:municipalidad_de_malargue/screens/page_location.dart';
import 'package:municipalidad_de_malargue/screens/page_location2.dart';

// import 'package:municipalidad_de_malargue/widgets/widgets.dart';

class TabUbicaciones extends StatelessWidget {
  final double height;

  TabUbicaciones({this.height});
  final List<Map<String, String>> products = [
    {
      'urlImage':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/04/malargue-municipalidad-1.jpg',
      'title': 'Municipalidad de Malargüe',
      'schedule': '08:00hs a 13:00hs',
      'description': 'description',
      'number': 'tel:02604471060',
      'urlLocation':
          "https://www.google.com/maps/place/Municipality+of+Malarg%C3%BCe/@-35.4699356,-69.5828001,17z/data=!4m5!3m4!1s0x0:0xdba40975c2c3cf61!8m2!3d-35.4691534!4d-69.5842417"
    },
    {
      'urlImage':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/11/6ccf4dc0-d57c-4e45-90c0-f6b579773729.jpg',
      'title': 'Desarrollo Social',
      'schedule': '08:00hs a 13:00hs',
      'description': 'description',
      'number': 'tel:02604471541',
      'urlLocation':
          "https://www.google.com/maps/place/Secretaria+Desarrollo+Social/@-35.4697593,-69.5944624,14z/data=!4m9!1m2!2m1!1sdesarrollo+social+malargue!3m5!1s0x967a7fe197a1010b:0x58dcf4ad08cf17cb!8m2!3d-35.4744687!4d-69.5904141!15sChpkZXNhcnJvbGxvIHNvY2lhbCBtYWxhcmd1ZSIDiAEBkgESY2l0eV9jbGVya3Nfb2ZmaWNl"
    },
    {
      'urlImage':
          'https://www.malargue.gov.ar/wp-content/uploads/2020/12/119906822_3292286270824368_1875384053163340481_n.jpg',
      'title': 'Turismo',
      'schedule': '08:00hs a 13:00hs',
      'description': 'description',
      'number': 'tel:02604470096',
      'urlLocation':
          "https://www.google.com/maps/place/Centro+Turistico+report+Malarg%C3%BCe/@-35.4621233,-69.5883381,17z/data=!3m1!4b1!4m5!3m4!1s0x967a7ec6266859dd:0xd313d9e065db0dc4!8m2!3d-35.4621233!4d-69.5861494"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00939d),
        shape: StadiumBorder(),

        actions:<Widget> 
        [Container(
          padding: EdgeInsets.only(right: 10),

          child: IconButton(
            onPressed: (){
              // showSearch(context: context, delegate: )
            },
            icon: Icon(Icons.search, color:Colors.white,size: 35,),
          ),
        ),]),
        
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              final json = products[index];
              // print(json['title']);
              return ListTile(
                  isThreeLine: true,
                  title: Text(
                    json['title'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Horarios de Atención: " + json['schedule'],
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  minLeadingWidth: 50,
                  onTap: () =>                     Navigator.push(
                          context, MaterialPageRoute(
                        builder: (context) => LocationPage(
                          description:json['description'],
                          number:json['number'],
                          schedule:json['schedule'],
                          title:json['title'],
                          urlImage:json['urlImage'],
                          urlLocation:json['urlLocation'],
                        ),
                      )));
              // openLink(json['urlLocation']));
            }),
      
    );
  }
}
