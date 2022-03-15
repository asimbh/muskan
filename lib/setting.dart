import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muskan1/dash.dart';
import 'package:muskan1/login.dart';

class setting extends StatelessWidget {
  const setting({Key? key}) : super(key: key);

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
            alignment: Alignment.topCenter,
            child: Image(
              image: AssetImage('assets/jk1.png'),
            ),
          ),
          SizedBox(height:10),
          Container(
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),

            child: TextField(
              decoration: InputDecoration(
                  hintText: "Name" ,
                  prefixIcon: Icon(Icons.person, color: Colors.black,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  )
              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),

            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email" ,
                  prefixIcon: Icon(Icons.email, color: Colors.black,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  )
              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),

            child: TextField(
              decoration: InputDecoration(
                  hintText: "Phone" ,
                  prefixIcon: Icon(Icons.phone, color: Colors.black,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  )
              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),

            child: TextField(
              decoration: InputDecoration(
                  hintText: "Gender" ,
                  prefixIcon: Icon(Icons.male, color: Colors.black,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  )
              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                color: Colors.green,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dash()));
                },
                child: Text("Update", style: TextStyle(color: Colors.white),),
              ),

            ) ,
          ),
          SizedBox(height:50),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                color: Colors.deepPurple,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                },
                child: Text("Log Out", style: TextStyle(color: Colors.white),),
              ),

            ) ,
          ),

      ],
    )
        )
    );
  }
}
