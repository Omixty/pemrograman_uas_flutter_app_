import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pemrograman_uas_flutter_app/bloc/bloc_steam_page.dart';
import 'package:pemrograman_uas_flutter_app/home_api_page.dart';
import 'package:pemrograman_uas_flutter_app/msp/multi_provider.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Color(0xFF3594DD),
              Color(0xFF4563DB),
              Color(0xFF5036D5),
              Color(0xFF5B16D0),
            ],
          )),

      child: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.white12,
                  child: Image(
                    image: AssetImage('asset/homepage.png'),
                  ),
                ),

                Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.white30,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        BorderedText(
                          strokeWidth: 2.0,
                          child: Text(
                            "TUGAS UAS PERMROGRAMAN MOBILE",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),


                //new widget

              ],
            ),
          ),

          Container(

            margin: EdgeInsets.fromLTRB(10, 7, 10, 7),
            height: 200,
            width: 130,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        splashColor: Colors.black54,
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return HomeApi();
                              }));
                        },
                        child: Center(
                          child: Text(
                            'REST API PUT/DELETE/POST/GET',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // =============================================================

                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        splashColor: Colors.black54,
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return ProvideStateMulti();
                              }));
                        },
                        child: Center(
                          child: Text(
                            'STATE MANAGEMEN PROVIDER',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //==============================================================

                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        splashColor: Colors.black54,
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return BlocStream();
                              }));
                        },
                        child: Center(
                          child: Text(
                            'STATE MANAGEMENT BLOC',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //

              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            color: Colors.white70,
            child: Positioned(
              bottom: 1,
              child: BorderedText(
                  strokeWidth: 2.0,
                 child: Text(
                    " Lexy Ardhiyansyah Pratama ",
                   style: TextStyle(
                     fontSize: 15,
                     color: Colors.white,
                ),
              ),
            ),),
          )


          //new widged

        ],
      ),


    );
  }
}
