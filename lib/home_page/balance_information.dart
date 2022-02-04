import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

Widget balanceInformation (double _width, double _height){
  return Container(
    width: 215,
    height: 100,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kSecondaryColor,
              kColor1,
            ]),
      borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.3),
          ),
        ]
    ),

    child: Container(
      width: 150,
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 20),
              child: Text("Account Balance:", style: TextStyle(fontSize: 10, color: Colors.white)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              const Text("Rp.15.000.000", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
              FaIcon(FontAwesomeIcons.coins, size: 20, color: Colors.white),
            ],
          ),
        ],
      ),
    ),
  );
}