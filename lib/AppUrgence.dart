import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mon_projet/Accueil.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> makeCall(String url) async{
  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw "Nous ne pouvons pas lancer l'appel sur $url";
  }
}

class Appel extends StatelessWidget {
  const Appel({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 35),
        child: Container(

          child: Column(
            children: [
              //container contenant le logo du mali
              Container(
                padding: EdgeInsets.only(right: 20, top: 5, bottom: 5),
                height: 160,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),

                child: Row(
                  children: [
                    //icon pour le retour
                    Container(
                        alignment: Alignment.topLeft,
                        child:
                        GestureDetector(
                          child: Icon(CupertinoIcons.back,
                            size: 35,
                          ),
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_) =>Accueil())
                            );
                          },
                        )

                    ),

                    Expanded(
                      child: Center(
                        child: Image.asset("assets/images/mali.png",
                         // width: MediaQuery.of(context).size.width * .90,
                            height: 180,
                            alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),

              Container(
                width: MediaQuery.of(context).size.width * .92,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],

                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 30, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      //premier Bouton
                      Row(
                        children: [
                          Container(
                            decoration:  BoxDecoration(
                              border: Border.all(color: Colors.black38, width: 3),
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: ClipOval(
                              child:
                              Image.asset("assets/images/ambulance.png",
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,),
                            ),
                          ),

                          SizedBox(
                            width: 20,
                          ),

                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                minimumSize: Size(290, 50),
                                primary: Colors.redAccent,
                              ),
                              onPressed: () =>makeCall('tel:+22390675432'),
                              child: Text("POLICE DE SECOURS", style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
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

                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                minimumSize: Size(290, 50),
                                primary: Colors.redAccent,
                              ),
                              onPressed: () =>makeCall('tel:+22390675432'),
                              child: Text("PROTECTION CIVILE", style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),


                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),

                      //Bouton de
                      Row(
                        children: [
                          ClipOval(
                            child:
                            Image.asset("assets/images/gendarmerie.png",
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
                                minimumSize: Size(290, 50),
                                primary: Colors.redAccent,
                              ),
                              onPressed: () =>makeCall('tel:+22390675432'),
                              child: Text("GENDARMERIE NATIONALE", style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),


                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),

                      //Bouton de
                      Row(
                        children: [
                          ClipOval(
                            child:
                            Image.asset("assets/images/police.png",
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
                                minimumSize: Size(290, 50),
                                primary: Colors.redAccent,
                              ),
                              onPressed: () =>makeCall('tel:+22390675432'),
                              child: Text("POLICE NATIONALE", style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),


                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),


                      //Bouton de
                      Row(
                        children: [
                          ClipOval(
                            child:
                            Image.asset("assets/images/violence.png",
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
                                minimumSize: Size(290, 50),
                                primary: Colors.redAccent,
                              ),
                              onPressed: () =>makeCall('tel:+22390675432'),
                              child: Text("VIOLENCE CONJUGALE", style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),

              Center(
                child:
                Text("Copyright-2022", style: TextStyle(fontSize: 20),),

              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),

            ],

          ),
        )

      ),

    );
  }
}
