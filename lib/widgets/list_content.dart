import 'package:flutter/material.dart';
import 'package:project_sample/constants/constants.dart';

class ListContent extends StatelessWidget {
  const ListContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(  
        itemCount: 4,  
        scrollDirection: Axis.horizontal,  
        itemBuilder: (context, index) {  
          return Padding(  
            padding: const EdgeInsets.symmetric(horizontal: 20),  
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.start,  
              crossAxisAlignment: CrossAxisAlignment.start,  
              children: [  
                Container(  
                  width: 270,  
                  height: 170,  
                  child: Image(  
                    image: AssetImage('assets/land.jpeg'),  
                    fit: BoxFit.cover,  
                  ),  
                ),  
                SizedBox(height: 10),  
                Text("FULL SYLLABUS COMPLETION",style:subtext),  
                SizedBox(height: 10),  
                Text("Abhyaas - Railway Group D", style: mainhead),  
                SizedBox(height: 10),  
                Row(  
                  children: [  
                    Icon(Icons.calendar_month, color: Colors.grey.shade400),  
                    SizedBox(width: 10),  
                    Text("Started on 5 Jan 2022", style: sub),  
                  ],  
                ),  
                SizedBox(height: 10),  
                Row(  
                  children: [  
                    Icon(Icons.timer_outlined, color: Colors.grey.shade400),  
                    SizedBox(width: 10),  
                    Text("Morning Classes", style: sub),  
                  ],  
                ),  
                SizedBox(height: 10),  
                Row(  
                  children: [  
                    Icon(Icons.person, color: Colors.grey.shade500),  
                    SizedBox(width: 10),  
                    Text(  
                      """MS Mustafaa, Deepak Kumar  
Sharma,Samar Pratap Singh,..""",  
                      style: sub,  
                    )
                  ],  
                ),
              ],  
            ),  
          );  
        },  
      ),
    );
  }
}