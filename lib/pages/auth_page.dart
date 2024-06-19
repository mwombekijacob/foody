
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foody/pages/admin_page.dart';
import 'package:foody/pages/login_page.dart';



class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: StreamBuilder<User?> (
stream: FirebaseAuth.instance.authStateChanges(),
builder: (context,snapshot){

if(snapshot.hasData){

  // ignore: prefer_const_constructors
  return AdminPage(User: 'Admin',);
}else{

  return LoginPage();
}

},

 ),


    );
  }
}