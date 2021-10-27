part of 'widgets.dart';

class CardCarousel extends StatelessWidget {
  final Function function;
  final String urlImage;
  final bool cover;
  

  const CardCarousel(
      {Key key, @required this.function, @required this.urlImage, this.cover = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: this.function,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),

            ),
        child:  
        ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child:FadeInImage(
          image: NetworkImage(this.urlImage),
          placeholder: AssetImage('assets/facha.gif'),
          fadeInDuration: Duration(milliseconds: 1000),
          fit: this.cover ? BoxFit.contain : BoxFit.cover,
          ),
          ),
        ),
        );
  }
}
