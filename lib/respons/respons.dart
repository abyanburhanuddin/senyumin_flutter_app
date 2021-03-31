import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:senyumin_flutter/constans/dialogConstant.dart';
import 'package:senyumin_flutter/home/navbar.dart';

class Respons extends StatefulWidget {
  @override
  _ResponsState createState() => _ResponsState();
}

class _ResponsState extends State<Respons> {
  double getTopMargin(BuildContext context) =>
      (MediaQuery.of(context).size.height * 0.15);

  double getWidth(BuildContext context) =>
      (MediaQuery.of(context).size.width * 0.8);

  double getButtonWidth(BuildContext context) =>
      (MediaQuery.of(context).size.width * 0.65);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: getTopMargin(context)),
              child: Text("Perasaan kamu saat ini",
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xFF757272),
                          fontSize: 12,
                          fontStyle: FontStyle.normal))),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(Mood.mood,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 30,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold))),
            ),
            Container(
              margin: EdgeInsets.only(top: 17.0),
              width: 167.0,
              child: Image.asset('assets/img/img-baik.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: getWidth(context),
              child: Text(
                  'Wah, akhirnya kamu tersenym bahagia! Tetap pertahankan itu ya. Semua akan baik-baik saja :)',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 13,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal))),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: getWidth(context),
              child: Text('Jangan lupa untuk tersenyum dan bahagia! :)',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xFF757272),
                          fontSize: 10,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal))),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 6),
              width: getWidth(context),
              child: Text('Butuh dukungan dari teman-teman lain?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xFFAF64FA),
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold))),
            ),
            ButtonTheme(
              minWidth: getButtonWidth(context),
              height: 38,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Navbar();
                  }));
                },
                child: Text("Butuh Dukungan",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Color(0xFF5D519D),
                            fontSize: 13,
                            fontWeight: FontWeight.bold))),
                color: Colors.transparent,
                splashColor: Color(0xFFFED47E),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(color: Color(0xFFAF64FA))),
              ),
            ),
            ButtonTheme(
              minWidth: getButtonWidth(context),
              height: 38,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Navbar();
                  }));
                },
                child: Text("Kembali ke Beranda",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 13,
                            fontWeight: FontWeight.bold))),
                color: Color(0xFFAF64FA),
                splashColor: Color(0xFFFED47E),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
