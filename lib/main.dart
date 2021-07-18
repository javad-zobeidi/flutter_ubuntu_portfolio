import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui' as ui;

import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wall-3.jpg"),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          children: [
            Container(
              key: Key("AppBar"),
              width: MediaQuery.of(context).size.width,
              height: 35,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 15),
                    child: Text("Activities",style: TextStyle(color: Colors.white),),
                  ),
                  Center(child: Text(DateFormat('E MMM dd kk:mm').format(DateTime.now()).toString(),style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(child: SvgPicture.asset("assets/svg/network-wireless-signal-good-symbolic.svg")),
                          Container(child: SvgPicture.asset("assets/svg/audio-volume-medium-symbolic.svg")),
                          Container(child: SvgPicture.asset("assets/svg/battery-good-symbolic.svg")),
                          Container(child: Icon(Icons.arrow_drop_down,size: 25,color: Colors.white,)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height *0.946,
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.946,
                    width: 55,
                    color: Color(0x66000000),
                    child: Container(
                      margin: EdgeInsets.only(top: 8),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height *0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Image.asset("assets/images/chrome.png",width: 30,height: 30,),
                                ),
                                Container(
                                  child: Image.asset("assets/images/todoist.png",width: 30,height: 30,),
                                ),
                                Container(
                                  child: Image.asset("assets/images/user-home.png",width: 30,height: 30,),
                                ),
                                Container(
                                  child: Image.asset("assets/images/vscode.png",width: 30,height: 30,),
                                ),
                                Container(
                                  child: Image.asset("assets/images/bash.png",width: 30,height: 30,),
                                ),
                                Container(
                                  child: Image.asset("assets/images/spotify.png",width: 30,height: 30,),
                                ),
                                Container(
                                  child: Image.asset("assets/images/gnome-control-center.png",width: 30,height: 30,),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: SvgPicture.asset("assets/svg/view-app-grid-symbolic.svg",width: 30,height: 30,),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}

