part of 'widgets.dart';

class IconGeneric extends StatelessWidget {

  final String icon;
  final double size;

  const IconGeneric({ @required this.icon, @required this.size});

  @override
  Widget build(BuildContext context) {
    Map<String, IconData> icons = {
      'handsWash': FontAwesomeIcons.handsWash,
      'headSideMask': FontAwesomeIcons.headSideMask,
      'handshakeSlash': FontAwesomeIcons.handshakeSlash,
      'peopleArrows': FontAwesomeIcons.peopleArrows,
    };

    return FaIcon(
      icons[this.icon],
      color: Color(0xff00939d),
      size: this.size,
    );
  }
}