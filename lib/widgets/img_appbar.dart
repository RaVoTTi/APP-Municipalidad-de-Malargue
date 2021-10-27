part of 'widgets.dart';

class ImgAppBar extends StatelessWidget {
  final Function function;
  final String urlImage;


  const ImgAppBar(
      {Key key, @required this.function, @required this.urlImage,  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    print(height * 0.03);
    return GestureDetector(
        onTap: this.function,
        child: Container(
          width: double.infinity,
          
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(20.0),

          //   ),
        child:  
        ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(height * 0.04), bottomRight:  Radius.circular(height * 0.04)),
        child:FadeInImage(
          height: height * 0.3,
          image: NetworkImage(this.urlImage),
          placeholder: AssetImage('assets/facha.gif'),
          fadeInDuration: Duration(milliseconds: 1000),
          fit: BoxFit.fill,
          ),
          ),
        ),
        );
  }
}
