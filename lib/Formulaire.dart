import 'package:flutter/material.dart';
import 'package:mon_projet/Accueil.dart';

class Formulaire extends StatelessWidget {

  const Formulaire({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(0),
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
                    icon: const Icon(Icons.subdirectory_arrow_left_rounded),
                  ),
                ),

                Container(
                  height: 150.0,
                  color: Colors.black12,
                  child: Image.asset("assets/images/repu.png", width: 600, height: 200 ),
                ),

                const SizedBox(height: 20.0,),

                Row(
                  children:  [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.all(10),
                      decoration:  BoxDecoration(
                        border: Border.all(color: Colors.red, width: 3),
                        shape: BoxShape.circle,
                        color: Colors.black12
                      ),
                      child: const Icon(Icons.person, size: 60,),

                    ),

                    const SizedBox(width: 15.0,),
                    Container(
                      //padding: EdgeInsets.only(right: 20),
                      alignment: Alignment.center,
                      height: 40,
                      child:  ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
                          ),
                          primary: Colors.redAccent,
                        ),

                        child: const Text('Numero Urgent',
                          style: TextStyle(fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),

                      ),
                    )

                  ],
                ),

                const SizedBox(height: 40.0,),

                Container(
                  height: 80.0,
                  color: Colors.black26,
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

                      const SizedBox(height: 20.0, width: 10.0,),

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
                      padding: const EdgeInsets.only(left: 90, right: 90),
                      height: 40,
                      child:  ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(primary: Colors.greenAccent,
                            shadowColor: Colors.red,
                            elevation: 2,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            side: const BorderSide(color: Colors.black, width: 1)),
                        child:
                        const Text('Ajouter',
                          style: TextStyle(fontSize: 20, color: Colors.black),),
                      ),
                    )

                  ],
                ),
                const SizedBox(height: 90,),
                const Text('Copyright 2022',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
                )

              ],)
        ),
      ),
    );
  }
}
