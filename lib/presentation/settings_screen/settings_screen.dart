import 'package:flutter/material.dart';

import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';



class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //todo header
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: ListTile(
                isThreeLine: true,
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
                    Text(
                      "membre depuis Mars 2019",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFbcbfc0),fontSize: 12 ),
                    ),
                  ],
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/images/splashscreen.jpg'),
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
                leading: Icon(
                  Icons.credit_card_rounded,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
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
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text("COMPTE",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: ListTile(
                isThreeLine: true,
                title: Text(
                  "E-Mail",textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                ),
                subtitle: Text(
                  "selima.bay@gmail.com",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500,color:Color(0xFFb4b1b7),fontSize: 18 ),

                ),
                leading: Icon(
                  Icons.email,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
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

                isThreeLine: true,
                title: Text(
                  "Mot de passe",textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                ),
                subtitle: Text(
                  "**********",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500,color:Color(0xFFb4b1b7),fontSize: 18 ),

                ),
                leading: Icon(
                  Icons.lock,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
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
                isThreeLine: true,
                title: Text(
                  "Telephone",textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                ),
                subtitle: Text(
                  "22446688",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500,color:Color(0xFFb4b1b7),fontSize: 18 ),

                ),
                leading: Icon(
                  Icons.email,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.phone,
                  size: 20,
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
                isThreeLine: true,
                title: Text(
                  "Langue",textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                ),
                subtitle: Text(
                  "Françajs",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500,color:Color(0xFFb4b1b7),fontSize: 18 ),

                ),
                leading: Icon(
                  Icons.language,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),

            //todo autre applications
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text("AUTRE APPLICATION",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: ListTile(
                title: Text(
                  "HOUDOU TV",textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                ),
                leading: Icon(
                  Icons.tv,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
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
                title: Text(
                  "HOUDOU boutique",textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                ),
                leading: Icon(
                  Icons.shop,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
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
            //todo Autres
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text("AUTRES",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: ListTile(
                title: Text(
                  "Conditions générales",textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                ),
                leading: Icon(
                  Icons.file_present,
                  size: 30,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
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
            Column(
              children: [
                InkWell(
                  onTap: (){
                    NavigatorService.pushNamed(
                      AppRoutes.loginScreen,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: ListTile(
                      title: Text(
                        "Se déconnecter",textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xFFb7bbb8),fontSize: 20 ),
                      ),
                      leading: Icon(
                        Icons.exit_to_app,
                        size: 30,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color(0xffa5a5a5),
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
