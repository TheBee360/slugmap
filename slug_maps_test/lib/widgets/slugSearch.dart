import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testing_app/widgets/slugMapMain.dart';

class slugSearch extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}
class _SearchState extends State<slugSearch> {
  Widget build(BuildContext context) {
    //phone dimensions
    double phoneWidth = MediaQuery
        .of(context)
        .size
        .width; //375
    double phoneHeight = MediaQuery
        .of(context)
        .size
        .height; //812


    return Scaffold(
      body: Container(
        height: phoneHeight,
        width: phoneWidth,
        color: Color(0xffe5e2e2),

        //Stack: Map, Search/filter selection
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top: 0),
              width: phoneWidth,
              height: phoneHeight * .2130541872,
              decoration: BoxDecoration(
                color: Color(0xffececec),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffe5e2e2)
                  ),
                  BoxShadow(
                    color: Color(0xffe2e0e0),
                    blurRadius: 12,
                    spreadRadius: -12,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: phoneHeight * .2192118227),
              width: phoneWidth,
              height: phoneHeight * .7807881773,
              decoration: BoxDecoration(
                color: Color(0xffececec),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffe5e2e2)
                  ),
                  BoxShadow(
                    color: Color(0xffe2e0e0),
                    blurRadius: 12,
                    spreadRadius: -12,
                  ),
                ],
              ),

            ),
            //Container 2: Full Search bar container
            Container(
              margin: EdgeInsets.only(
                  top: phoneHeight * .05665024631, left: phoneWidth * .048),
              width: phoneWidth * .904,
              height: phoneHeight * .04310344828,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                color: Color(0xffececec),
              ),
            ),
            //Container 3: container for search option with search text
            Container(
              width: phoneWidth * .8106666667,
              height: phoneHeight * .04310344828,
              margin: EdgeInsets.only(
                  top: phoneHeight * .05665024631, left: phoneWidth * .048),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  // context,
                  //MaterialPageRoute(builder: (context) => slugMapMain()), );

                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: phoneWidth * .05866666667,
                  top: phoneHeight * .05911330049),
              width: phoneWidth * .08,
              height: phoneHeight * .03694581281,
              child: Stack(
                children: <Widget> [
                  FloatingActionButton(
                      backgroundColor: Color(0xffececec),
                      elevation: 0,
                      child: SvgPicture.asset('assets/images/Go_back.svg',),
                      onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => slugMapMain()),
                        );
                      }
                  ),

                ],


              ),
            ),

          ],
        ),
      ),
    );
  }
}