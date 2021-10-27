part of 'widgets.dart';

class BtnGenerico extends StatelessWidget {

  final String name;
  final Function function;
  final double width;

  const BtnGenerico({@required this.name, @required this.function, this.width = 0.0 });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  onPressed: this.function,
                  child: Text(this.name),
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    minimumSize: this.width == 0.0 ?  Size(5, 50) : Size(this.width,50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: Color(0xff00939d),
                    onPrimary: Colors.white,
                  ),
                );
  }
}