import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muskan1/dash.dart';

class jentry extends StatelessWidget {
  const jentry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFefeef3),
    body: SingleChildScrollView(
    child: Column(
    children: [
    Container(
    alignment: Alignment.topLeft,
    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    child: IconButton(
    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => dash()));},
    icon: Icon(Icons.home, size: 30,),
    )
    ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
        alignment: Alignment.center,
        child: Image(
          image: AssetImage('assets/jrnl5.png'),
        ),
      ),
      SizedBox(height:90),
      Container(
        child: GestureDetector(
          onTap: (){},
          child: Image.asset('assets/txt2.png'),
        ),

      ),
    ]
    )
    )

    );
  }
}
