part of 'widgets.dart';



class FachaText extends StatelessWidget {
  
  final String title;
  final double size;
  final Color color;
  final FontWeight weight;
  const FachaText({Key key,@required this.title,@required this.size, this.weight = FontWeight.bold, this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(this.title,
    style: TextStyle(
      fontFamily: 'Monserrat',
      color: this.color,
      fontWeight: this.weight,
      decoration: TextDecoration.none,
      fontSize: this.size,
      textBaseline: TextBaseline.ideographic

    )
    

    );
 
}
}

