import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
 
class PageTurismoCabanasFincas extends StatefulWidget {
  //
  PageTurismoCabanasFincas() : super();
 
  final String title = 'RSS Feed Demo';
 
  @override
  PageTurismoCabanasFincasState createState() => PageTurismoCabanasFincasState();
}
 
class PageTurismoCabanasFincasState extends State<PageTurismoCabanasFincas> {
  //
  // ignore: non_constant_identifier_names
  var FEED_URL = Uri.parse('https://www.malargue.gov.ar/category/app/cabanas-fincas/feed/');
  RssFeed _feed;
  // ignore: unused_field
  String _title;
  static const String loadingFeedMsg = 'Cargando';
  static const String feedLoadErrorMsg = 'Error al cargar la noticia. Verifica tu conexión a internet.';
  static const String feedOpenErrorMsg = 'Error al abrir la noticia. Verifica tu conexión a internet.';
  static const String placeholderImg = 'images/no_image.png';
  GlobalKey<RefreshIndicatorState> _refreshKey;
 
  updateTitle(title) {
    setState(() {
      _title = title;
    });
  }
 
  updateFeed(feed) {
    setState(() {
      _feed = feed;
    });
  }
 
  Future<void> openFeed(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: false,
      );
      return;
    }
    updateTitle(feedOpenErrorMsg);
  }
 
  load() async {
    updateTitle(loadingFeedMsg);
    loadFeed().then((result) {
      if (null == result || result.toString().isEmpty) {
        updateTitle(feedLoadErrorMsg);
        return;
      }
      updateFeed(result);
      updateTitle(_feed.title);
    });
  }
 
  Future<RssFeed> loadFeed() async {
    try {
      final client = http.Client();
      final response = await client.get(FEED_URL);
      return RssFeed.parse(response.body);
    } catch (e) {
      //
    }
    return null;
  }
 
  @override
  void initState() {
    super.initState();
    _refreshKey = GlobalKey<RefreshIndicatorState>();
    updateTitle(widget.title);
    load();
  }
 
  title(title) {
    return Text(
      title,
      style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
 
  // subtitle(subTitle) {
  //   return Text(
  //     subTitle,
  //     style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),
  //     maxLines: 1,
  //     overflow: TextOverflow.ellipsis,
  //   );
  // }
 
  // thumbnail(imageUrl) {
  //   return Padding(
  //     padding: EdgeInsets.only(left: 15.0),
  //     child: CachedNetworkImage(
  //       placeholder: (context, url) => Image.asset(placeholderImg),
  //       imageUrl: imageUrl,
  //       height: 50,
  //       width: 70,
  //       alignment: Alignment.center,
  //       fit: BoxFit.fill,
  //     ),
  //   );
  // }
 
  rightIcon() {
    return Icon(
      Icons.keyboard_arrow_right,
      color: Color(0xff00939d),
      size: 30.0,
    );
  }
 
  list() {
    return ListView.builder(
      itemCount: _feed.items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = _feed.items[index];
        return ListTile(
          tileColor: Colors.white,
          hoverColor: Color(0xff6a2b86),
          leading: FaIcon(FontAwesomeIcons.chevronCircleRight,color: Color(0xff00939d),),
          title: title(item.title),
          // subtitle: subtitle(item.pubDate),
          trailing: rightIcon(),
          contentPadding: EdgeInsets.all(45.0),
          onTap: () => openFeed(item.link),
        );
      },
    );
  }
 
  isFeedEmpty() {
    return null == _feed || null == _feed.items;
  }
 
  body() {
    return isFeedEmpty()
        ? Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                            image: AssetImage('assets/cabecera.jpg'),
                            fit: BoxFit.cover),
          ),
          child: Center(
              child: LinearProgressIndicator(
                backgroundColor: Color(0xff00939d),
                valueColor: AlwaysStoppedAnimation(Color(0xff6a2b86),),
              ),
            ),
        )
        : RefreshIndicator(
            key: _refreshKey,
            child: list(),
            onRefresh: () => load(),
          );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cabañas y Fincas"),
        backgroundColor: Color(0xff00939d),
      ),
      body: body(),
    );
  }
}