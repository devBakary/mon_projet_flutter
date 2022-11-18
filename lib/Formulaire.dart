
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mon_projet/Accueil.dart';

class Formulaire extends StatelessWidget {

  const Formulaire({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 14),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin:  EdgeInsets.all(0),
                  alignment: Alignment.topLeft,
                  child:IconButton(
                    alignment: Alignment.topRight,
                    iconSize: 40,
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Accueil(),
                        ),
                      );
                    },
                    icon: const Icon(CupertinoIcons.back),
                  ),
                ),

                //le container contenant l'image de la republique du Mali
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
                  height: MediaQuery.of(context).size.height * .03,
                 ),

                Row(

                  children:  [
                    Container(
                      width: 70,
                      height: 70,
                      margin:  EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        border: Border.all(color: Colors.red, width: 3),
                        shape: BoxShape.circle,
                        color: Colors.black12
                      ),
                      child: const Icon(Icons.person, size: 60,),

                    ),

                    const SizedBox(width: 12.0,),

                    Expanded(
                      child: Container(
                        //padding: EdgeInsets.only(right: 20),
                        alignment: Alignment.center,
                        child:  ElevatedButton(

                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(400, 50),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)
                            ),
                            primary: Colors.redAccent,
                          ),

                          child: const Text('Numero Urgent',
                            style: TextStyle(fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),

                        ),
                      ),
                    )

                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),

                Container(
                  height: 80.0,
                  color: Color(0XFFe6e6e6).withOpacity(0.9),
                  padding: EdgeInsets.all(6),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration:  BoxDecoration(
                          border: Border.all(color: Colors.black38, width: 3),
                          shape: BoxShape.circle,
                          color: Colors.black12,
                        ),
                        // padding: const EdgeInsets.all(50,),
                        // margin: const EdgeInsets.only(left: 10),
                        height: 70,
                        width: 70,
                        child: const Icon(Icons.person_add, size: 55,),

                      ),

                      const SizedBox( width: 10.0,),

                      const Text('Ajouter Contact', textAlign: TextAlign.end,

                        style: TextStyle(fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w900
                        ),
                      )

                    ],
                  ),
                ),

                const SizedBox(height: 15.0,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 85, right: 85),
                      height: 55,
                      child:  ElevatedButton(onPressed: (){
                        _ouvrirTab(context);
                      },
                        style: ElevatedButton.styleFrom(primary: Colors.greenAccent,
                            shadowColor: Colors.red,
                            elevation: 2,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            side: const BorderSide(color: Colors.black, width: 1)),
                        child:
                        const Text('Ajouter',
                          style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                    )

                  ],
                ),
                 SizedBox(
                   height: MediaQuery.of(context).size.height * .2,
                 ),
                const Text('Copyright 2022',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
                ),

              ],
            )
        ),
      ),
    );
  }
}

void _ouvrirTab(context){
  showModalBottomSheet(context: context,
  isScrollControlled: true,
  backgroundColor: Colors.white,
      builder: (BuildContext bc)
  {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * .90,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                        Icons.close,
                      size: 40,
                    ),
                  ),

                  Text("Nouveau Contact", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  InkWell(
                    child: Text("OK", style: TextStyle(fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),

                  ),
                  ),

                ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Center(
                  child: Icon(CupertinoIcons.person_circle_fill,
                  size: 140,
                    color: Colors.black54),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Prenom',
                  border: UnderlineInputBorder()
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Nom',
                    border: UnderlineInputBorder()
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'example@gmail.com',
                    border: UnderlineInputBorder()
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'numéro',
                    border: UnderlineInputBorder()
                ),
              ),
            ),

          ],
        ),
      ),
    );
  });
}




