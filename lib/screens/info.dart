import 'package:covid19/shared/constant.dart';
import 'package:covid19/widget/CustomCard.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
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
                    image: AssetImage('assets/img/informasi.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, top: 50),
            child: Text(
              'Kenali\nCOVID-19',
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
                        Text(
                          'Apa itu virus Corona',
                          style: header,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomCard(path: 'mengenal.svg', title: 'Mengenal'),
                        CustomCard(path: 'mencegah.svg', title: 'Mencegah'),
                        CustomCard(path: 'mengobati.svg', title: 'Mengobati'),
                        CustomCard(path: 'mengantisipasi.svg', title: 'Mengantisipasi'),
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
