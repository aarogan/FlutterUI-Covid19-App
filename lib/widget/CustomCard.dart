import 'package:covid19/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  String path;
  String title;

  CustomCard({this.path, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            leading: SvgPicture.asset('assets/icon/' + path),
            title: Text(
              title,
              style: cardText,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Color(0XFF99A6C0),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard2 extends StatelessWidget {
  String path;
  String title;

  CustomCard2({this.path, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            leading: SvgPicture.asset('assets/icon/' + path),
            title: Text(
              title,
              style: cardText,
            ),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: RaisedButton(
                color: Color(0XFF67C57B),
                child: Text(
                  'Panggil',
                  style: textBody.copyWith(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
