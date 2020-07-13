import 'package:covid19/shared/constant.dart';
import 'package:covid19/widget/CustomCard.dart';
import 'package:flutter/material.dart';

class Bantuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: mediaQuery * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/bantuan.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, top: 50),
            child: Text(
              'Pusat\nBantuan',
              style: h1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 18),
            child: DraggableScrollableSheet(
              initialChildSize: 0.57,
              maxChildSize: 0.57,
              minChildSize: 0.56,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28),
                          topRight: Radius.circular(28),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 18),
                          child: Text(
                            'Pusat Bantuan',
                            style: header,
                          ),
                        ),
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Jika anda mengalami gejala - gejala ',
                                style: textBodySmall.copyWith(
                                    color: Color(0XFF99A6C0))),
                            TextSpan(
                                text: 'seperti ini ',
                                style: textBodySmall.copyWith(
                                    decoration: TextDecoration.underline,
                                    color: Color(0XFF67C57B))),
                            TextSpan(
                                text: 'silahkan hubungi kontak dibawah.',
                                style: textBodySmall.copyWith(
                                    color: Color(0XFF99A6C0))),
                          ]),
                        ),
                        SizedBox(height: 20),
                        CustomCard2(path: 'hotline.svg', title: 'Hotline',),
                        CustomCard(path: 'konsultasi.svg', title: 'Konsultasi'),
                        CustomCard(path: 'rumahsakit.svg', title: 'Rumah Sakit Terdekat'),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
