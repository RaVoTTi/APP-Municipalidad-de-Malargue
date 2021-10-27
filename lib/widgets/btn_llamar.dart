part of 'widgets.dart';

class BtnLlamar extends StatelessWidget {

  final double width;

  final Function function;
  const BtnLlamar({ @required this.width, @required this.function });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(width * 0.7, 50),
              primary: Color(0xff00939d),
              onPrimary: Colors.white.withOpacity(1.0),
              shape: StadiumBorder()),
          onPressed: this.function,
          child: Center(
            child: Text(
                "LLAMAR",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          
        );
  }
}

