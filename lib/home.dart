import 'package:flutter/material.dart';  
import 'package:project_sample/constants/constants.dart';
import 'package:project_sample/widgets/list_content.dart';
import 'package:project_sample/widgets/stack_content.dart';  

class HomeScreen extends StatefulWidget {  
  const HomeScreen({super.key});  

  @override  
  State<HomeScreen> createState() => _HomeScreenState();  
}  

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        leading: Icon(Icons.ac_unit, color: Colors.red),  
        title: Text("Railway Exams", style: textmain),  
        actions: [  
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: CircleAvatar(  
              radius: 15,  
              backgroundColor: Colors.white,  
              child: CircleAvatar(  
                radius: 13,  
                backgroundColor: Colors.grey.shade800,  
                child: IconButton(  
                  onPressed: () {},  
                  icon: Icon(Icons.search, size: 15),  
                ),  
              ),  
            ),
          ),  
        ],  
      ),  
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.42,
              child: Column(  
                children: [  
                  ListContent(),  
                  StackContent()    
                ],  
              ),
            ),
          ],
        ),
      ),
      bottomSheet: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.zero,topRight: Radius.zero),
        child: Container(
          width: double.infinity,
          height: 50,
          color: Colors.grey.shade800,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Starts at Rs100,000/month"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(  
                               width: 180,  
                               height: 40,  
                               child: ElevatedButton(  
                                 style: ElevatedButton.styleFrom(  
                                   shape: RoundedRectangleBorder(  
                                     borderRadius: BorderRadius.circular(5),  
                                   ),  
                                   backgroundColor: Color(0xff00cc99),  
                                 ),  
                                 onPressed: () {},  
                                 child: Flexible(child: Text("View subscription plans", style: script)),  
                               ),  
                             ),
              ),

            ],
          )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        selectedLabelStyle: const TextStyle(decoration: TextDecoration.overline,decorationThickness: 4),
        backgroundColor: Colors.grey.shade800,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [  
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),  
            label: 'Home',  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
            label: 'Self Study',  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.person),  
            label: 'Me',  
          ),  
        ],  
      ),  
    );  
  }  
}



