import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appel extends StatelessWidget {
  const Appel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/repu.png", width: 600, height: 200),

              SizedBox(
                height: 15,
              ),

              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                width: 600,
                height: 80,
                color: Colors.black12,


              ),

              SizedBox(
                height: 20,
              ),

              Container(
                padding: EdgeInsets.only(left: 30, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    //premier Bouton
                    Row(
                      children: [
                        ClipOval(
                          child:
                          Image.asset("assets/images/ambulance.png",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            minimumSize: Size(290, 50),
                            primary: Colors.redAccent,
                          ),
                          onPressed: (){},
                          child: Text("POLICE DE SECOURS", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 24),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //Bouton de
                    Row(
                      children: [
                        ClipOval(
                          child:
                          Image.asset("assets/images/PROTECT.jpg",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            minimumSize: Size(290, 50),
                            primary: Colors.redAccent,
                          ),
                          onPressed: (){},
                          child: Text("PROTECTION CIVILE", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 24),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 20,
                    ),

                    //Bouton de
                    Row(
                      children: [
                        ClipOval(
                          child:
                          Image.asset("assets/images/urg.png",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            minimumSize: Size(290, 50),
                            primary: Colors.redAccent,
                          ),
                          onPressed: (){},
                          child: Text("GENDARMERIE ", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 24),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 20,
                    ),

                    //Bouton de
                    Row(
                      children: [
                        ClipOval(
                          child:
                          Image.asset("assets/images/urg.png",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            minimumSize: Size(290, 50),
                            primary: Colors.redAccent,
                          ),
                          onPressed: (){},
                          child: Text("POLICE NATIONALE", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 24),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 20,
                    ),


                    //Bouton de
                    Row(
                      children: [
                        ClipOval(
                          child:
                          Image.asset("assets/images/urg.png",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                            minimumSize: Size(290, 50),
                            primary: Colors.redAccent,
                          ),
                          onPressed: (){},
                          child: Text("VIOLENCE CONJUGALE", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

            ],

          ),
        )

      ),

    );
  }
}
