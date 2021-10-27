part of 'widgets.dart';

class CardViolet extends StatelessWidget {
  final String name;
  final Function function;

  CardViolet({@required this.name, @required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xff6a2b86)),
                  child: Center(
                      child: Text(
                    this.name,
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                onTap: this.function,
              );
  }
}