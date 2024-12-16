import 'package:e_commerceapplication/Screens/graphScreen/department_Stats/donut_chart_main.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic height,width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Grocery Application",
          style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
        ),
        leading: Icon(Icons.insert_emoticon_sharp),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active,
          color: Colors.blueAccent,))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              height: MediaQuery.of(context).size.height * 0.41,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey, // Grey color for shadow
                    blurRadius: 5.0,    // Softens the shadow
                    spreadRadius: 1.0,  // Extends the shadow
                    offset: Offset(0, 2), // Moves shadow right and down
                  ),
                ],
                borderRadius: BorderRadius.circular(8.0), // Optional: Rounded corners
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: donutcard_main(),
              )
          )
        ],
      ),
    );
  }
}
