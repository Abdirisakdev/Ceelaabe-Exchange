import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:Ceelaabe/screens/dahabexchange.dart';
import 'package:Ceelaabe/screens/zaadexchange.dart';

class Screen1 extends StatelessWidget {
  /* ==================== */
  /* Yellow Section Color */
  /* ==================== */
  final sheetColor = const Color(0xFF590363);
  final bgColor = const Color(0xFFfafafa);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      /* ==================== */
      /* Qaybta sare ee Logada */
      /* ==================== */
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
          child: Positioned(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 65,
                ),
                Image(
                  height: 40,
                  image: AssetImage('images/logom.png') 
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: RaisedButton(
                    color: bgColor,
                    elevation: 0.0,
                    hoverElevation: 0.0,
                    hoverColor: bgColor,
                    child: Icon(Icons.share),
                    onPressed: (){
                      Share.share("Sariflaha Ceelaabe is Cool!");
                  },
                    
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: bgColor,
      ),

      /* ==================== */
      /* Dhammaad Qaybta sare ee Logada */
      /* ==================== */

      body: SafeArea(
        child: Column(
        children: <Widget>[

          // ==========================================
          // ZAAD DAILY EXCHANGE RATE VALUES
          // ==========================================


          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                      child: Row(
              children: <Widget>[
                SizedBox(
                  width: 70,
                ),
                ShilingCard(sheetColor: sheetColor,
                gacanta1: "GACANTA HORE",
                gacanta2: "GACANTA DAMBE",
                qiimaha1: '8500',
                qiimaha2: '8600',
                image: "images/edahab-logo.png"
                ),
                SizedBox(
                  width: 20,
                ),

          // ==========================================
          // E-DAHAB DAILY EXCHANGE RATE VALUES
          // ==========================================


                ShilingCard(sheetColor: sheetColor,
                gacanta1: "GACANTA HORE",
                gacanta2: "GACANTA DAMBE",
                qiimaha1: '8500',
                qiimaha2: '8600',
                image: "images/zaad-logo.png"
                ),
                SizedBox(
                  width: 15,),
               // ShilingCard(sheetColor: sheetColor),
                SizedBox(
                  width: 20,),
              ],
            ),
          ),

          /* ==================== */
          /* Qaybta Dooro Account-kaaga */
          /* ==================== */

            Expanded(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: sheetColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80, top: 20),
                        child: Column(
                          children: <Widget>[
                            Text('DOORO', style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              fontSize: 37,
                              color: Colors.white,
                            ),
                            ),
                            Text('AKOONKAAGA', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilroy',
                              fontSize: 17,
                              letterSpacing: 2.5,
                            ),
                            ),
                            SizedBox(
                              height: 10,
                              width: 200,
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                    ),
                    Container(
                        child: Column(
                          children: <Widget> [

                        // ==========================================
                        // ZAAD SERVICE BUTTON WITH HIS STYLE
                        // ==========================================


                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                margin: EdgeInsetsDirectional.only(top: 100,),
                                padding: EdgeInsets.only(left: 30, right: 30,),
                                height: 60,
                                width: double.infinity,
                                child: RaisedButton(
                                  hoverElevation: 0,
                                  hoverColor: sheetColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)
                                  ),
                                  elevation: 0,
                                  color: Colors.white,
                                  child: Text('ZAAD SERVICE', style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Gilroy',
                                    color: sheetColor,
                                    fontSize: 22,
                                  ),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ZaadExchangetype()
                                      ),
                                    );
                                  },
                                ),
                              ),
                              // ==========================================
                              // E-DAHAB SERVICE BUTTON WITH HIS OWN STYLE
                              // ==========================================

                            SizedBox(
                              height: 20,
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 30, right: 30,),
                              height: 60,
                              width: double.infinity,
                              child: RaisedButton(
                                hoverElevation: 0,
                                hoverColor: sheetColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                                elevation: 0,
                                color: Colors.white,
                                child: Text('E-DAHAB SERVICE', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gilroy',
                                  color: sheetColor,
                                  fontSize: 22,
                                ),
                                ),
                                onPressed: (){Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => EdahabExchangetype()
                                    ),
                                  );

                                },
                              ),
                            ),

                            SizedBox(
                              height: 20,
                              width: 200.0,
                              child: Divider(
                              color: Colors.teal.shade100,
                              ),
                            ),


                              ],
                            ),
                            ),

          
                            
                          ],
                        ),
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

class ShilingCard extends StatelessWidget {

  final String gacanta1;
  final String gacanta2;
  final String qiimaha1;
  final String qiimaha2;
  final String image;

  const ShilingCard({
    Key key,
    @required this.sheetColor,
    this.gacanta1,
    this.gacanta2,
    this.qiimaha1,
    this.qiimaha2,
    this.image,
  }) : super(key: key);

  final Color sheetColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 180,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 10,),
            height: 210,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.white.withOpacity(.86),
               boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300].withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 25,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 33.0),
            height: 75,
            width: 95,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                ),
            ),
          ),
          Positioned(
            top: 80,
            left: 17,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text(gacanta1, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  fontFamily: 'Gilroy',
                  color: sheetColor,
                ),
                ),
                Text('SLSH' ', ' '$qiimaha1', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                  fontSize: 23.5,
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(gacanta2, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  fontFamily: 'Gilroy',
                  color: sheetColor,
                ),
                ),
                Text('SLSH' ', ' '$qiimaha2', style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 23.5,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





