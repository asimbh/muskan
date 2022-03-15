import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class intro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFefeef3),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: heightScreen,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/hmbg.jpg'),
                      fit: BoxFit.fitHeight,
                    )
                ),
              ),
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                color: Color(0xFF3848FC),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                },
                child: Text("Sign Up", style: TextStyle(color: Colors.white),),
              ),
            ),



          ],
        ),
      ),



    );



  }
}