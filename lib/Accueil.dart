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
      body: SingleChildScrollView(


        child: Column(
          children:[
            SizedBox(
              height: 60,
              width: 100,
            ),

            //l'image de la republique du Mali
            Container(
              child:
                    Image.asset("assets/images/repu.png", width: 600, height: 200 ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 80,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),

              child: Column(

                children:[
                  Text("Description: ",textAlign: TextAlign.start, style: TextStyle(),),
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

                      ElevatedButton(
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

                      ElevatedButton(
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

                      ElevatedButton(
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

                    ],
                  ),

                  SizedBox(
                    height: 180.0,
                  ),

                  Center(
                    child:
                        Text("Copyright-2022", style: TextStyle(fontSize: 20),),

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
