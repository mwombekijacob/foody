import 'package:flutter/material.dart';
import 'package:foody/pages/auth_page.dart';
import 'package:foody/pages/client_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(width);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "CafeApp",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
            ),
          ),
        backgroundColor: const Color.fromARGB(255, 54, 54, 54),
          ),
          

      body: SafeArea(
          child: Container(
           height: double.infinity,
           child: Column(
              children: [
        const Text("CAFERERIA ORDERING APP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                                  width: double.infinity,
                                  height: height * 0.25,
                                   child: ClipRRect(
                                     borderRadius:  BorderRadius.circular(20),
                                
                                     child: const Image(
                                      image: AssetImage("assets/img/juice.jpeg"),
                                      fit: BoxFit.cover,
                                     ),
                                   ),
                                  
                                ),
                      ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  height: height * 0.25,
                                   child: ClipRRect(
                                     borderRadius:  BorderRadius.circular(20),
                                
                                     child: const Image(
                                      image: AssetImage("assets/img/matunda.jpeg"),
                                      fit: BoxFit.cover,
                                     ),
                                   ),
                                  
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: double.infinity,
                                  height: height * 0.25,
                                   child: ClipRRect(
                                     borderRadius:  BorderRadius.circular(20),
                                
                                     child: const Image(
                                      image: AssetImage("assets/img/ugali.jpeg"),
                                      fit: BoxFit.cover,
                                     ),
                                   ),
                                  
                                ),
                              ),
                                                 Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: height * 0.25,
                                   child: ClipRRect(
                                     borderRadius:  BorderRadius.circular(20),
                                
                                     child: const Image(
                                      image: AssetImage("assets/img/chips.jpeg"),
                                      fit: BoxFit.cover,
                                     ),
                                   ),
                                  
                                ),
                              )
                    
                    ],),
                  ),
                ),
                width <= 500? 
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.grey)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClientPage()));
                    },
                    child: Container(
                      height: 80,
                      width: 230,
                      child: const Center(
                        child: Text("Client",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28
                          )
                        )
                      )
                    )
                  )
                // SizedBox(
                // height: 20,
                // ),
                :ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.grey)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const AuthPage()));
                    },
                    child: Container(
                      height: 50,
                      width: 70,
                      child: const Center(
                        child: Text("Admin",
                        style: TextStyle(
                          color: Colors.white,fontSize: 20
                          ),
                        )
                      )
                    )
                  ),
              ],
            ),
          ),
        ),
     
    );
  }
}
