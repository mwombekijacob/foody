import 'package:flutter/material.dart';
import 'package:foody/components/widgets/my_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 54, 54, 54),
      title: const Text("MyCart",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold
        ),
        ), 
        centerTitle: true,
        ),

      body: 
      
      SingleChildScrollView(
        
        
          child: Column(
            
            children: [
              // Expanded(child: Image.asset('assets/img/usafi.jpeg')),
              SizedBox(
              height: 300,
                child: ListView(children: const [
                
                Card(child: ListTile(title: Text("FoodName"),trailing: Text("Price"),)),
                Card(child: ListTile(title: Text("FoodName"),trailing: Text("Price"),)),
                Card(child: ListTile(title: Text("FoodName"),trailing: Text("Price"),)),
                Card(child: ListTile(title: Text("FoodName"),trailing: Text("Price"),))
                
                ],),
              ),
              // Spacer(),
              // const SizedBox(
              //   height: 20,
              // ),
          
              // Container(
              //   child: const Text('Your Location'),
              // ),
           SizedBox( height: 0.1,
             child: Column(
                        children: [
                      
                    const Text("YOUR LOCATION",
                    style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold, 
                    ),
                    ),
                    
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [MaterialButton(
                          onPressed: () {
                       
                          },
                          color: const Color.fromARGB(255, 54, 54, 54),
                          child: const Text(
                            "VIMBWETA",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 30,),
                        MaterialButton(
                          onPressed: () {
                          // signInUser();
                        
                          
                          },
                          color: const Color.fromARGB(255, 54, 54, 54),
                          child: const Text(
                            "FUNCTION HALL",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                        ],
                        ),
                
                        const SizedBox(
                          height: 5
                          ),
                           Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [MaterialButton(
                          onPressed: () {
                       
                          },
                          color: const Color.fromARGB(255, 54, 54, 54),
                          child: const Text(
                            "BOYS HOSTEL",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 30,),
                        MaterialButton(
                          onPressed: () {
                          // signInUser();
                          },
                          color: const Color.fromARGB(255, 54, 54, 54),
                          child: const Text(
                            "GIRLS HOSTEL",
                            style: TextStyle(color: Colors.white),
                          ),
                          
                        )
                        ],
                        ),
                        const SizedBox(
                          height: 30,
                          ),

                         MyButton(onTap: (){}, 
                        text: "PLACE YOUR ORDER"),
                        const SizedBox(
                          height: 30,
                          ),
                        
                Container(
                  height: 20,
                  color: Colors.red,
                  child: const Center(
                    child: Text("PLEASE DISPOSE WASTE IN APROPIATE PLACE ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                      ),
                      )
                      ),
                    
                      ),
                // Container(
                //  decoration:  const BoxDecoration(
                //   image: DecorationImage(image: AssetImage('assets/img/usafi.jpeg'),),
                // ),),
                
                        ],
                        
                  ),
           ),
            ],
          
          ),
            
        
        ),
        
      );
  }
}