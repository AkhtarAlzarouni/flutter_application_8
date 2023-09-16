
import 'package:flutter/material.dart';
import 'package:flutter_application_8/models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<User> user=[
    User("Laptop", "assets/yy.jpg"),
    User("phone", "assets/pppp.jpg"),
    User("Computer", "assets/ccc.jpg"),
    User("Keypord", "assets/kkk.jpg"),
  
    // User("Oman", "assets/ooo.png"),
    // User("Egypt","assets/ee.jpg"),
    // User("KSA", "assets/kk.png"),
    // User("UAE","assets/uu.jpg"),
    // User("Oman", "assets/ooo.png"),
    // User("Egypt","assets/ee.jpg"),
    // User("KSA", "assets/kk.png"),
    // User("UAE","assets/uu.jpg"),
    // User("Oman", "assets/ooo.png"),
    // User("Egypt","assets/ee.jpg"),
    // User("KSA", "assets/kk.png"),
    // User("UAE","assets/uu.jpg"),

  ];
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width);
    print(MediaQuery.sizeOf(context).height);
    return Scaffold(
      body: GridView.builder(
        itemCount: user.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (context, index) {
        return Container(
          width: 400,
          height: 300,
          child: Stack(
            children: [
              
                Container(
              margin: EdgeInsets.all(10),
             width: 200,
            height: 150,
            clipBehavior: Clip.antiAlias,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20) // Adjust the radius as needed
           ),
            child: Image.asset(user[index].image!,
              fit: BoxFit.cover,
            ),
                ),
              Container(
                margin: EdgeInsets.only(top: 30,left: 30),
                
                child: Text(user[index].name!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))
            ], 
            ),
          
        );
        
      },),



    // body: ListView.builder(
      
    //   itemBuilder: (context, index) => SizedBox(
    //     width: 100,
    //     child: Card(child: ListTile(
    //       leading: Image.asset(user[index].image!,width: 60,height: 40,),
    //       title: Text(user[index].name!),
    //     ), ),
    //   ),
    //   itemCount: user.length,
    //  )
      
      
    );
  }
}