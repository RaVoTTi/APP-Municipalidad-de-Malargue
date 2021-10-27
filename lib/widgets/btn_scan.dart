part of 'widgets.dart';

class BtnScan extends StatelessWidget {
  // const BtnScan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 120,
              child: InkWell(
                onTap: () async {
                  await Permission.camera.request();
                  String barcode = await scanner.scan();
                  if (barcode == null) {
                    print('nothing return.');
                  } else {
                    await canLaunch(barcode) ? await launch(barcode) : throw 'Could not launch $barcode';
                  }
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.qr_code_scanner_sharp,
                          size: 50,
                          color: Color(0xff6a2b84),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "Escanear Código QR",
                            style: TextStyle(color: Color(0xff6a2b84)),
                          )), //arreglar
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _scan() async {
    await Permission.camera.request();
    String barcode = await scanner.scan();
    if (barcode == null) {
      print('nothing return.');
    } else {
      openLink(barcode);
    }
  }
}
