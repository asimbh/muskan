import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:muskan1/HomePage.dart';
import 'package:muskan1/auth_controller.dart';

var emailCntrl = TextEditingController();
var passwordCntrl = TextEditingController();

class signup extends StatelessWidget {
  signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool iChecked = false;
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFefeef3),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 0.2 , bottom: 0.2),
                  width: widthScreen,
                  height: heightScreen * 0.22,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/cya.png"
                          )

                      )
                  )
              ),
              Container(
                  margin: const EdgeInsets.only(top: 1.0, bottom: 1.0),
                  width: widthScreen,
                  height: heightScreen * 0.05,
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
                  height: heightScreen * 0.15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/ol.png"
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
                  controller: emailCntrl,
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
              SizedBox(height: 8,),
              Container(
                width: 360,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),

                child: TextField(
                  controller: passwordCntrl,
                  obscureText: true,
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
              SizedBox(height: 70,),
              GestureDetector(
                onTap: (){
                  AuthController.instance.register(emailCntrl.text.trim(), passwordCntrl.text.trim());
                },

              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                    color: Color(0xFF3B4AF3),
                    onPressed: (){},
                    child: Text("Get Started", style: TextStyle(color: Colors.white),),
                  ),

                ) ,
              ),
              ),
              SizedBox(height: 60,),
              RichText(text: TextSpan(
                  text: "BY 'GETTING STARTED' YOU AGREE WITH PRIVACY POLICY",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,

                  )
              )
              ),

            ]
        ),
      ),
    );

  }
}
