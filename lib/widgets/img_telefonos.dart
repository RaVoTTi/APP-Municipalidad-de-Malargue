part of 'widgets.dart';

class ImgTelefonos extends StatelessWidget {
  final String urlImage;
  final double heightImage;
  ImgTelefonos({Key key, this.urlImage, this.heightImage});

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
          height: heightImage ,
          image: NetworkImage(this.urlImage),
          placeholder: AssetImage('assets/facha.gif'),
          fadeInDuration: Duration(milliseconds: 1000),
          fit: BoxFit.cover,
        );
  }
}
