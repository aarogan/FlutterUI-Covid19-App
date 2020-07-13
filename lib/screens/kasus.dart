import 'package:covid19/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Kasus extends StatelessWidget {
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
                  image: AssetImage('assets/img/kasus.png'), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, top: 50),
            child: Text(
              'Lawan\nCOVID-16',
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
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          initialValue: 'DKI Jakarta',
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_on,
                              size: 14,
                              color: Color(0XFF67C57B),
                            ),
                            suffixIcon: Icon(Icons.keyboard_arrow_down,
                                size: 14, color: Color(0XFF67C57B)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(28),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 18, bottom: 8),
                          child: Text(
                            'Update Kasus Corona',
                            style: header,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Terakhir diupdate 12 Juni',
                              style: textBody.copyWith(
                                color: Color(0XFF99A6C0),
                              ),
                            ),
                            Text(
                              'Lihat detail',
                              style: textBody.copyWith(
                                color: Color(0XFF67C57B),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 18, bottom: 18),
                          padding: EdgeInsets.only(top: 18, bottom: 18),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                              color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SvgPicture.asset('assets/icon/positif.svg'),
                                  Text(
                                    '375',
                                    style: count.copyWith(
                                        color: Color(0XFFFF9E6B)),
                                  ),
                                  Text(
                                    'Positif',
                                    style: textBodySmall.copyWith(
                                        color: Color(0XFF99A6C0)),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SvgPicture.asset('assets/icon/sehat.svg'),
                                  Text(
                                    '200',
                                    style: count.copyWith(
                                        color: Color(0XFF67C57B)),
                                  ),
                                  Text(
                                    'Sehat',
                                    style: textBodySmall.copyWith(
                                        color: Color(0XFF99A6C0)),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SvgPicture.asset('assets/icon/mati.svg'),
                                  Text(
                                    '10',
                                    style: count.copyWith(
                                        color: Color(0XFFE36172)),
                                  ),
                                  Text(
                                    'Meninggal',
                                    style: textBodySmall.copyWith(
                                        color: Color(0XFF99A6C0)),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
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
