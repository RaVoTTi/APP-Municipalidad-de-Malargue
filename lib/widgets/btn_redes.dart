part of 'widgets.dart';



class BtnRedes extends StatelessWidget {
  final String name;

  // BtnRedes({@required this.name});
   BtnRedes({Key key,  this.name}) : super(key: key);

  final Map<String, dynamic> redes = {
    'Facebook': {
      'icon': FontAwesomeIcons.facebook,
      'url': 'https://www.facebook.com/MunicipalidadMgue/',
    },
    'Twitter': {
      'icon': FontAwesomeIcons.twitter,
      'url':
          'https://twitter.com/MuniMalargue?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
    },
    'Instagram': {
      'icon': FontAwesomeIcons.instagram,
      'url': 'https://www.instagram.com/municipalidad_de_malargue/?hl=es',
    },
    'Youtube': {
      'icon': FontAwesomeIcons.youtube,
      'url': 'https://www.youtube.com/channel/UClUqTVqYB0HaGrywjjMy62w',
    },
    'Radio 94.5 FM Municipal': {
      'icon': FontAwesomeIcons.microphone,
      'url': 'https://serviciostreaming.com/radio/11/playerfull.php?p=7045&r=RadioMunicipalEnvivo',
    },
    'Cine': {
      'icon': FontAwesomeIcons.film,
      'url': 'https://serviciostreaming.com/radio/11/playerfull.php?p=7045&r=RadioMunicipalEnvivo',
    },
    'Chat Bot': {
      'icon': FontAwesomeIcons.robot,
      'url': 'https://serviciostreaming.com/radio/11/playerfull.php?p=7045&r=RadioMunicipalEnvivo',
    },
    'Terminal': {
      'icon': FontAwesomeIcons.bus,
      'url': 'https://serviciostreaming.com/radio/11/playerfull.php?p=7045&r=RadioMunicipalEnvivo',
    },
  };

 

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: FaIcon(
          redes[this.name]['icon'],
          color: Color(0xff00939d),
          size: 30,
        ),
        tooltip: this.name,
        onPressed: () => openLink(redes[this.name]['url'])
        );
  }
}