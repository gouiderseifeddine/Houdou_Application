import 'package:flutter/material.dart';

import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';



class Settings2Screen extends StatefulWidget {
  const Settings2Screen({Key? key}) : super(key: key);

  @override
  _Settings2ScreenState createState() => _Settings2ScreenState();
}

class _Settings2ScreenState extends State<Settings2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //todo header
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  title: Text(
                    "Mon Compte",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 18 ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "selima.bay@gmail.com",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb4b1b7),fontSize: 18 ),
                      ),

                    ],
                  ),
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Icone Profil.png'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
              ),
              //todo abonnement
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text("ABONNEMENT",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  title: Text(
                    "Carte 40 cours",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                  ),
                  leading: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Icone_Abonnement.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color:Color(0xff737373),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffa5a5a5),
                indent: 20,
                endIndent: 20,
              ),

              //todo compte
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text("COMPTE",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  isThreeLine: true,
                  dense: true,
                  title: Text(
                    "E-Mail",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                  ),
                  subtitle: Text(
                    "selima.bay@gmail.com",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w500,color:Color(0xFFb4b1b7),fontSize: 18 ),

                  ),
                  leading: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Icone_Email.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff737373),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffa5a5a5),
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  isThreeLine: true,
                  dense: true,
                  title: Text(
                    "Mot de passe",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                  ),
                  subtitle: Text(
                    "*********",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w500,color:Color(0xFFb4b1b7),fontSize: 18 ),

                  ),
                  leading: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Icone_Mot de passe.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff737373),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffa5a5a5),
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  isThreeLine: true,
                  dense: true,
                  title: Text(
                    "Teléphone",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                  ),
                  subtitle: Text(
                    "+21620288288",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w500,color:Color(0xFFb4b1b7),fontSize: 18 ),

                  ),
                  leading: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Icone_Abonnement.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff737373),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffa5a5a5),
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  isThreeLine: true,
                  dense: true,
                  title: Text(
                    "Langue",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                  ),
                  subtitle: Text(
                    "Français",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w500,color:Color(0xFFb4b1b7),fontSize: 18 ),

                  ),
                  leading: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/icone Langue.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff737373),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffa5a5a5),
                indent: 20,
                endIndent: 20,
              ),

              //todo autre
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text("AUTRES",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  dense: true,
                  title: Text(
                    "Historique & Evolution",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                  ),
                  leading: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Icone_Abonnement.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff737373),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffa5a5a5),
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  dense: true,
                  title: Text(
                    "Conditions générales",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                  ),
                  leading: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Icone_Abonnement.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff737373),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffa5a5a5),
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: InkWell(
                  onTap: (){
                    NavigatorService.pushNamed(
                      AppRoutes.loginScreen,
                    );
                  },
                  child: ListTile(
                    dense: true,
                    title: Text(
                      "Se déconnecter",textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                    ),
                    leading: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Icone_Se deconnecter.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Color(0xff737373),
                    ),
                  ),
                ),
              ),

              //todo Autres application
              SizedBox(height: 40,),

              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text("AUTRES APPLICATIONS",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  dense: true,
                  title: Text(
                    "Houdou TV",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                  ),
                  leading: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Icone_Houdou TV.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff737373),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffa5a5a5),
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  dense: true,
                  title: Text(
                    "Houdou Boutique",textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                  ),
                  leading: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Icone_Abonnement.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xff737373),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffa5a5a5),
                indent: 20,
                endIndent: 20,
              ),




              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
