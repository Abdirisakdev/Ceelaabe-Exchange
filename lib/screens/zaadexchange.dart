import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:Ceelaabe/screens/sarrifoshiling-zaad.dart';
import 'package:Ceelaabe/screens/sarrifodollar-zaad.dart';

// ==========================================
// TELESOM EXCHANGE TYPE SCREEN
// ==========================================


class ZaadExchangetype extends StatelessWidget {
  final sheetColor = const Color(0xFF590363);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // ==========================================
      // TOP APP BAR WITH LOGO AND SHARE BUTTON
      // ==========================================


      appBar: AppBar(
        backgroundColor: sheetColor,
        title: Center(
          child: Positioned(
            child: Row(
              children: <Widget> [
                Image(
                height: 43,
                image: AssetImage('images/logom-white.png'),
              ),
              SizedBox(
                width: 45,
              ),
              Expanded(
                    child: RaisedButton(
                    color: sheetColor,
                    elevation: 0,
                    hoverElevation: 0,
                    hoverColor: Colors.white,
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
      ),

      // ==========================================
      // ZAAD EXCHANGE TYPE CONTENT
      // ==========================================


      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: sheetColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50),),
                    ),
                  ),
                  

                  // ==========================================
                  // SECTION TITLE = "TELESOM EXCHANGE TYPE"
                  // ==========================================


                  Container(
                   child: Positioned(
                     top: 30,
                     left: 85,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          Text('TELESOM', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          ),
                          Text('EXCHANGE TYPE', style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          ),
                            SizedBox(
                              height: 20,
                              width: 200.0,
                              child: Divider(
                              color: Colors.white,
                              ),
                            ),
                        ]
                      )
                    ),
                  ),

                  //anOther Page Link

                  // ==========================================
                  // SARRIFO DOLLAR BUTTON WITH ANOTHER PAGE LINK
                  // ==========================================

                  Container(
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsetsDirectional.only(top: 100,),
                    padding: EdgeInsets.only(left: 30, right: 30,),
                    child: RaisedButton(
                      hoverElevation: 0,
                      hoverColor: sheetColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      elevation: 0,
                      color: Colors.white,
                      child: Text('Sarrifo Dollar', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                        color: sheetColor,
                        fontSize: 22,
                      ),
                      ),

                      // ==========================================
                      // SARRIFO SHILING ANOTHER PAGE LINKING
                      // ==========================================

                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Sarrifodollarzaad()
                          ),
                        );
                      },
                    ),
                  ),

                  // ==========================================
                  // SARRIFO SHILING BUTTON WITH ANOTHER PAGE LINK
                  // ==========================================


                  Container(
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 180,),
                    padding: EdgeInsets.only(left: 30, right: 30,),
                    child: RaisedButton(
                      hoverElevation: 0,
                      hoverColor: sheetColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      elevation: 0,
                      color: Colors.white,
                      child: Text('Sarrifo Shilling', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy',
                        color: sheetColor,
                        fontSize: 22,
                      ),
                      ),

                      // ==========================================
                      // SARRIFO DOLLAR PAGE LINKING
                      // ==========================================


                      onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Sarrifoshilingzaad()
                          ),
                        );
                      },
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