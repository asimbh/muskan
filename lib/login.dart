import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'signup.dart';


class login extends StatefulWidget {

  const login({Key? key}) : super(key: key);


  @override
  State<login> createState() => _loginState();


}

class _loginState extends State<login> {
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
                  margin: const EdgeInsets.only(top: 0.5 , bottom: 0.5),
                  width: widthScreen,
                  height: heightScreen * 0.25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/wbr.png"
                          )

                      )
                  )
              ),
              Container(
                  margin: const EdgeInsets.only(top: 1.0, bottom: 1.0),
                  width: widthScreen,
                  height: heightScreen * 0.07,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(0),
                  child: ElevatedButton.icon(
                      label: Text("CONTINUE WITH GOOGLE"),
                      icon: Icon(MdiIcons.google),
                      onPressed: (){} ,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                      )

                  )
              ),
              Container(
                  margin: const EdgeInsets.only(top: 0.5 , bottom: 0.5),
                  width: widthScreen,
                  height: heightScreen * 0.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/olie.png"
                          )

                      )
                  )
              ),
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
              SizedBox(height: 8,),
              Container(
                width: 360,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),

                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password" ,
                      prefixIcon: Icon(Icons.password, color: Colors.black,),
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
              SizedBox(height: 15,),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                    color: Color(0xFF3B4AF3),
                    onPressed: (){},
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                  ),

                ) ,
              ),
              SizedBox(height: 1,),
              Container(
                child: GestureDetector(
                  child: Container(
                    width: 200,
                    height: 75,
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                    alignment: Alignment(0.07, -0.69),
                    child: const Text('Forgot Password?'),
                  ) ,
                  onTap: (){},
                ),

              ),
              SizedBox(height: 25,),
              GestureDetector(
                child: Container(
                  width: 229,
                  height: 75,
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 0),

                  child: const Text("DON'T HAVE AN ACCOUNT? SIGNUP"),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                },
              ),

            ]
        ),
      ),
    );
  }
}

