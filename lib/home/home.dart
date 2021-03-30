import 'package:flutter/material.dart';
import 'package:senyumin_flutter/constans/dialogConstant.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double getLeftMargin(BuildContext context) =>
      (MediaQuery.of(context).size.width * 0.1) / 2 + 5;

  final _hidupsehat = [
    'assets/img/img-supportSystem.jpg',
    'assets/img/img-quarterLife.jpg'
  ];

  final _msgAnonim = [
    'assets/img/anonim.jpg',
    'assets/img/anonim1.jpg',
    'assets/img/anonim2.jpg',
    'assets/img/anonim.jpg',
    'assets/img/anonim2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 150.0,
          backgroundColor: Color(0xFFAF64FA),
          flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 15.0, bottom: 16.0),
              title: Text(
                'Selamat Pagi,\n' + Constants.name.toString() + '!',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontStyle: FontStyle.normal)),
              )),
        ),
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              height: 120.0,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(top: 18),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color(0xFFF7C4A7),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 20.0, left: 22.0),
                      child: Text(
                        'Bagaimana perasaanmu saat ini?',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                fontStyle: FontStyle.normal)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10.0, left: 22.0),
                      child: Text(
                        'Isi Mood Tracker kamu saat ini :)',
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                fontStyle: FontStyle.normal)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Text("Hidup Sehat Ala Senyumin",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w700))),
                  margin:
                      EdgeInsets.only(left: getLeftMargin(context), top: 30)),
              Container(
                  child: Text("Baca dan Latih Hidup Sehat Ala Senyumin",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF757272),
                              fontSize: 13,
                              fontWeight: FontWeight.normal))),
                  margin: EdgeInsets.only(left: getLeftMargin(context))),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 122.0,
            margin: EdgeInsets.only(top: 14),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _hidupsehat.length,
                padding: EdgeInsets.only(left: getLeftMargin(context)),
                itemBuilder: (context, index) {
                  return Container(
                    width: 225.0,
                    margin: EdgeInsets.only(right: 18.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(_hidupsehat[index]),
                            fit: BoxFit.fill)),
                  );
                }),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Text("Support System",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w700))),
                  margin:
                      EdgeInsets.only(left: getLeftMargin(context), top: 30)),
              Container(
                  child: Text("Semangatin teman-teman yang lain,yuk!",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xFF757272),
                              fontSize: 13,
                              fontWeight: FontWeight.normal))),
                  margin: EdgeInsets.only(left: getLeftMargin(context))),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 102.0,
            margin: EdgeInsets.only(top: 14),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _msgAnonim.length,
                padding: EdgeInsets.only(left: getLeftMargin(context)),
                itemBuilder: (context, index) {
                  return Container(
                    width: 102.0,
                    margin: EdgeInsets.only(right: 18.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(_msgAnonim[index]),
                            fit: BoxFit.fill)),
                  );
                }),
          ),
        ),
      ]),
    );
  }
}

/*
child: Container(
            height: 100.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Card(
                        child: Text("AByan"),
                        color: Color(0xFFFFFFFF),
                      ));
                }),
          ),
          */
