import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'dart:async';
import 'package:ussd/ussd.dart';


// ==========================================
// ZAAD DOLLAR EXCHANGE PAGE
// ==========================================
//Sarrifodollarzaad

class Sarrifodollardahab extends StatefulWidget {
  @override
  _SarrifodollardahabState createState() => _SarrifodollardahabState();
}

class _SarrifodollardahabState extends State<Sarrifodollardahab> {
  final sheetColor = const Color(0xFF590363);

  @override
  void initState(){
    super.initState();
  }

  Future<void> launchUssd(String ussdCode) async {
    Ussd.runUssd(ussdCode);
  }

  var _lacagta ;

  final lacagtacon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sheetColor,
      appBar: AppBar(
        backgroundColor: sheetColor,
        title: Center(
          child: Positioned(
            child: Row(
              children: <Widget> [
               Text('DOLLAR ', style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.normal,

                ),
                ),
                Text('TO', style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,

                ),
                ),
                Text(' SHILING', style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.normal,
                ),),
              SizedBox(
                width: 45,
              ),
              Expanded(
                    child: RaisedButton(
                    color: sheetColor,
                    elevation: 0,
                    hoverElevation: 0,
                    hoverColor: Colors.white,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,),
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

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: lacagtacon,
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                labelText: 'XADDIGA LACAGTA',
                helperText: 'Fadlan halkan gali lacagta aad rabto inaad sarrifato',
                helperStyle: TextStyle(
                  color: Colors.white,
                ),
                suffixText: 'USD',    
                suffixStyle: const TextStyle(color: Colors.white),
                labelStyle: TextStyle(
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                
                border: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: new BorderSide(color: Colors.white)
                ),
              ),
            ),
            RaisedButton(
              color: Colors.white,
            child: Text('SARRIFO', style: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.bold,
              color: sheetColor, 
            ),
            ),
            onPressed: (){
              _lacagta = lacagtacon.text;
              launchUssd('*109*300109*$_lacagta#');
            }
            )
          ],
        ),
        ),
      ),
    );
  }
}