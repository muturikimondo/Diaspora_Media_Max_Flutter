import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:media_house_all/YouTube.dart';
import 'package:media_house_all/Twitter.dart';
import 'package:media_house_all/WebSite.dart';
import 'package:media_house_all/Facebook.dart';
import 'package:media_house_all/HomePage.dart';
import 'package:provider/provider.dart';

import 'model/myaudio.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context)
  {
var cardTextStyle = TextStyle(fontFamily: "Montserrat Regular", fontSize: 12, color: Color.fromRGBO(96,63,48, 1));
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Container(


            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/app_header.png')


              )
            ),


          ),


          SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
                    child: Column(
            children:<Widget> [
              Container(
                  height: 64,
                  margin: EdgeInsets.only(bottom: 20),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: AssetImage('assets/images/pix.png'),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget> [
                      Text("Diaspora Media Max ", style: TextStyle(fontFamily: 'Montserrat Medium', color: Colors.white, fontSize: 18 ),),
                      Text("The Global Connector", style: TextStyle(fontFamily: 'Montserrat Regular', color: Colors.white, fontSize: 14 ),)
                    ],
                  )
                ],
              )
              ),

                Expanded(
                child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    primary: false,
                  crossAxisCount: 2,
                    children: <Widget> [
                      Card(
                        elevation: 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.svgrepo.com/download/204566/televisions-tv-screen.svg', height:64),
                            Text('Watch Live!', style: cardTextStyle)
                          ],
                        ),
                      ),
                      GestureDetector( child: Card(
                        elevation: 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.svgrepo.com/download/33887/radio.svg', height:64),
                            Text('Listen', style: cardTextStyle)
                          ],
                        ),
                      ),
                        onTap:(){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ChangeNotifierProvider(
                                  create: (_) => MyAudio(), child: HomePage())
                          ),
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()),
                        );
                        },
                      ),
                      GestureDetector( child: Card(
                        elevation: 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.svgrepo.com/download/61223/facebook.svg', height:64),
                            Text('YouTube', style: cardTextStyle)
                          ],
                        ),
                      ),
                        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Facebook()),
                        );
                        },
                      ),

                      GestureDetector( child: Card(
                        elevation: 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.svgrepo.com/download/92784/youtube.svg', height:64),
                            Text('YouTube', style: cardTextStyle)
                          ],
                        ),
                      ),
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>YouTube()),
                      );
                      },
                      ),
                      GestureDetector( child: Card(
                        elevation: 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.svgrepo.com/download/37457/twitter.svg', height:64),
                            Text('Twitter', style: cardTextStyle)
                          ],
                        ),
                      ),
                        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>Twitter()),
                        );
                        },
                      ),

                      GestureDetector( child: Card(
                        elevation: 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.network('https://www.svgrepo.com/download/294110/search-website.svg', height:64),
                            Text('Website', style: cardTextStyle)
                          ],
                        ),
                      ),
                        onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>WebSite()),
                        );
                        },
                      ),
                    ],




                )
                )

            ],
          )
  ),
          ),
        ],
      ),
    );
  }
}