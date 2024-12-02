import 'package:flutter/material.dart';
import 'package:project_sample/constants/constants.dart';

class StackContent extends StatelessWidget {
  const StackContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Padding(
           padding: const EdgeInsets.only(bottom: 60,left: 20,right: 20),
           child: Flexible(
             child: Container(  
               width: double.infinity,  
               height: 40, 
               child: ElevatedButton(  
                 style: ElevatedButton.styleFrom(  
                   shape: RoundedRectangleBorder(  
                     borderRadius: BorderRadius.circular(5),  
                   ),  
                   backgroundColor: Color(0xff00cc99),  
                 ),  
                 onPressed: () {},  
                 child: Text("View subscription plans", style: script),  
               ),  
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(child: TextButton(onPressed: (){}, child: Text("SEE HOW SUBSCRIPTION WORKS >",style: script,))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("""Meet our
exceptional educators""",style: textmain,),
                Text("SEE ALL >",style: script,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 180),
            child: Container(
              width: 170,
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage('assets/portrait-handsome-guy-smiling-camera-closeup-standing-over-gray-wall-100294160.webp'),fit: BoxFit.cover,)),
            ),
          ),
                                        Padding(
                  padding: const EdgeInsets.only(left:20,top: 450),
                  child: Text("Saurabh Malik",style: script,),
                ) ,
                Padding(padding: EdgeInsets.only(left: 20,top: 470),
                child: Text("Quantitative Aptitude",style: subscript,),),
                Padding(padding: EdgeInsets.only(left: 20,top: 490),
                child: Text("72k followers",style: sub,),),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 520),
                  child: Text("Courses on all Subjects",style: textmain,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 560),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming",style: script,),
                      Text("SEE ALL >",style: script,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 600),
                  child: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 28, 51, 140)
                    ),
                    child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 69, 88, 174),
                      radius: 30,
                      child: Image(image: AssetImage('assets/artist-white.png')))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 760),
                  child: Text("GENERAL AWARENESS",style: subtext,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 780),
                  child: Text("""Target: Course on GK for
Railway Group D""",style: script,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 820,bottom: 60),
                  child: Text("Ankit Chouhan",style: sub,),
                )
      ],
    );
  }
}