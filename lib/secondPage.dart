// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listradio/aquiz.dart';
import 'package:slide_countdown/slide_countdown.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   Color? bgcolor =Colors.white;
    int radiog=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
           SizedBox(
            height: 20,
           ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SlideCountdown(
              padding:EdgeInsets.all(20),
            duration: const Duration(minutes:10),
          ),
          ),

          Expanded(
            child: Container(
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: allQuiz.length,itemBuilder: (context, index) =>
                
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: Card(
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.all(35),
                          child: Text(allQuiz[index].question,style: TextStyle(fontSize: 27),),
                        ),
                      
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount:4,itemBuilder: (context, index) =>
                          RadioListTile(
                          title: Text(allQuiz[index].answerList[index].answer),
                          value:index, 
                          groupValue: radiog,
                          
                           onChanged:(value){
                           
                            
                        }),
                         
                        
                        )
                           
                        
                      ],
                    ),
                           ),
                 ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}