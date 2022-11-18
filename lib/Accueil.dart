import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mon_projet/AppUrgence.dart';
import 'package:mon_projet/Formulaire.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(


        child: Column(
          children:[
            SizedBox(
              height: 35
            ),

            //l'image de la republique du Mali
            Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],

              ),
              padding: EdgeInsets.all(5),
              height: 160,
              child: Image.asset("assets/images/mali.png",
                  width: MediaQuery.of(context).size.width * .90,
                  height: 180
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * .92,
              decoration: BoxDecoration(
                color: Color(0XFFe6e6e6).withOpacity(0.9),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),

              child: Column(

                children:[
                  Text("Description: ",textAlign: TextAlign.start,),
                  Text("Bienvenue dans l'application Urgence, l'application qu'il vous faut à tout moment!", textAlign: TextAlign.start,),

                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),

            // Bouton pour l'appel d'urgence
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(right: 20, left: 20),
             // padding: EdgeInsets.only(left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                   mainAxisSize: MainAxisSize.max,
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

                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            minimumSize: Size(250, 50),
                            primary: Colors.redAccent,
                          ),
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => Appel(),
                                ),
                            );
                          },
                          child: Text("Appel d'Urgence", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  // Bouton pour le contact d'urgence
                  Row(
                    children: [
                      ClipOval(
                        child:
                        Image.asset("assets/images/profil.jpg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            minimumSize: Size(250, 50),
                            primary: Colors.redAccent,
                          ),
                          onPressed: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => Formulaire(),
                              ),
                            );
                          },
                          child: Text("Contact d'Urgence", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  // Bouton Apropos
                  Row(
                    children: [
                      ClipOval(
                        child:
                        Image.asset("assets/images/apps.png",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            minimumSize: Size(250, 50),
                            primary: Colors.redAccent,
                          ),
                          onPressed: (){},
                          child: Text("Apropos", style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20),
                          ),
                        ),
                      ),

                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * .10,
                  ),

                  Center(
                    child:
                        Text("Copyright-2022", style: TextStyle(fontSize: 20, color: Colors.black),),

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
