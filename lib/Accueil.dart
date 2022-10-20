import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mon_projet/AppUrgence.dart';

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

              width: 20,
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
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Column(

                children:[
                  Text("Description: ",textAlign: TextAlign.start, style: TextStyle(),),
                  Text("Bienvenue dans l'application Urgence, l'application qu'il vous faut à tout moment!"),

                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            // Bouton pour l'appel d'urgence
            Container(

              padding: EdgeInsets.only(left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                          minimumSize: Size(280, 50),
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
                            fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          minimumSize: Size(280, 50),
                          primary: Colors.redAccent,
                        ),
                        onPressed: (){},
                        child: Text("Contact d'Urgence", style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 24),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
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
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                          minimumSize: Size(280, 50),
                          primary: Colors.redAccent,
                        ),
                        onPressed: (){},
                        child: Text("Apropos", style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 24),
                        ),
                      ),

                    ],
                  ),

                  SizedBox(
                    height: 50,
                  ),

                  Center(
                    child:
                        Text("Copyright-2020", style: TextStyle(fontSize: 20),),

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
