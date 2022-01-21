part of 'widgets.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 15);
  @override
  Widget build(BuildContext context) {
    final name = 'Municipalidad';
    final email = 'de Malargüe';
    final urlImage =
        'https://pbs.twimg.com/profile_images/1322735686856880128/81qqDWPJ_400x400.jpg';

    return Drawer(
      child: Material(
        color: Color(0xff6a2b86),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const SizedBox(height: 24),
                  // buildMenuItem(
                  //   text: 'Turismo',
                  //   icon: Icons.camera,
                  //   onClicked: () =>
                  //       Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => PageTurismo(),
                  //   )),
                  // ),
                  buildMenuItem(
                    text: 'Comunicados Importantes',
                    icon: Icons.new_releases,
                    onClicked: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Comunicados(),
                    )),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Bono de Sueldo',
                    icon: Icons.read_more,
                    onClicked: () => openLink(
                        'https://infogov.com.ar/bonos/malargue/#/login?returnUrl=%2F'),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Tiempo',
                    icon: Icons.cloud,
                    onClicked: () => openLink(
                        'https://www.meteored.com.ar/tiempo-en_Malargue-America+Sur-Argentina-Mendoza-SAMM-1-16758.html'),
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text:
                        'V.1.1.0.2021  Esta aplicación es desarrollada por el Área de Investigación y desarrollo de software.',
                    icon: Icons.developer_mode,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    String urlImage,
    String name,
    String email,
    VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: NetworkImage(
                    'https://turismo.malargue.gov.ar/wp-content/uploads/2019/11/payuna-home.jpg'),
                fit: BoxFit.cover),
          ),
          padding: padding.add(EdgeInsets.symmetric(vertical: 120)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    String text,
    IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
