import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:api_example_app/constants.dart';
import 'package:flutter/widgets.dart';

class CardsParent extends StatefulWidget {
  const CardsParent({
    Key key,
    @required this.size,
    this.icon,
    this.title,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String title;
  final String subtitle;
  final Function onTap;

  @override
  _CardsParentState createState() => _CardsParentState();
}

class _CardsParentState extends State<CardsParent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 140,
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  widget.icon,
                  size: 50,
                  color: kOrangeColor,
                ),
                title: Text(widget.title,
                    style: TextStyle(fontSize: 14.0, color: kOrangeColor)),
                subtitle: Text(widget.subtitle,
                    style: TextStyle(fontSize: 11.0, color: kOrangeColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
