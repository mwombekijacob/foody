
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:foody/components/widgets/my_button.dart';
import 'package:foody/components/widgets/my_textfield.dart';
// import 'package:foody/pages/home_page.dart';
// import 'package:foody/pages/login_page.dart';
import 'package:foody/pages/login_page1.dart';


class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final FirebaseAuth auth2 = FirebaseAuth.instance;
    final DatabaseReference usersDatabaseRef =
      FirebaseDatabase.instance.ref().child("RegUsers");
  final userNamecon = TextEditingController();
  // final userNIDAcon = TextEditingController();
  final userEmailcon = TextEditingController();
  final userPhonecon = TextEditingController();
  final passcon = TextEditingController();

  
    Future<void> signUpWithEmailPassword(String email, String password) async {
  try {
    UserCredential userCredential = await auth2.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    // User signed up successfully
    User? user = userCredential.user;
  } catch (e) {
    print('Failed to sign up with email and password: $e');
  }


  
}
void addItemToDatabase(
  String phone,
  String Name,
  String Reg
  )
  async {
    await  usersDatabaseRef.child(
      Name
      )
      .set(
        {
          "PhoneNumber": phone,
          "NIDA": Reg,
           }
          );
        }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      image: DecorationImage(
      image: AssetImage(
        'assets/img/soda.jpg',
        ),
        fit: BoxFit.fitHeight,
        )
        ),

     child: Scaffold(
     backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // const SizedBox(
                //   height: 30,
                // ),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white70,
                    size: 140,
                  ),
                ),
                const Text(
                  "My Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                  myText: "enter full name",
                  obscu: false,
                  controller: userNamecon,
                ),
                // const SizedBox(
                //   height: 20,
                // ),
           
           
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  myText: "enter email address",
                  obscu: false,
                  controller: userEmailcon,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  myText: "enter phone number",
                  obscu: true,
                  controller: userPhonecon,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  myText:"enter password",
                  obscu: true,
                  controller: passcon,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  text: "Sign Up",
                  onTap: () async{
                    
          
                //   await signUpWithEmailPassword(userEmailcon.text, passcon.text);
                //  addItemToDatabase(userPhonecon.text,userNamecon.text,userNIDAcon.text);

                 await  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  ClientLoginPage(),
                      ),
                     );
               
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
