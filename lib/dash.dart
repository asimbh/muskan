import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:muskan1/HomePage.dart';
import 'package:muskan1/Intro.dart';
import 'package:muskan1/jentry.dart';
import 'package:muskan1/setting.dart';
import 'package:muskan1/wt.dart';
import 'package:muskan1/moodb.dart';
import 'signup.dart';

class dash extends StatelessWidget {
  const dash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFFefeef3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: IconButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => setting()));},
                  icon: Icon(Icons.settings, size: 30,),
                )
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 70,horizontal: 10),
              child: RichText(text: TextSpan(
              text: "HI, ASIM",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,),
            ),

                )
            ),
            SizedBox(height:1),
            Container(
              child: GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => wt()));},
                child: Image.asset('assets/ep17.png'),
            ),

                ),
            SizedBox(height:40),
            Container(
              child: GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => jentry()));},
                child: Image.asset('assets/ep40.png'),
              ),

            ),
            SizedBox(height:40),
            Container(
              child: GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => mood()));},
                child: Image.asset('assets/ep50.png'),
              ),

            ),
        ]
              ),
            )
    );

  }
}
