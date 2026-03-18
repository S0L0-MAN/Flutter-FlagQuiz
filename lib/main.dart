import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Flag Quiz"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child : Column(
            children:[
              Text("Question 1"),
              const SizedBox(height:20),
              Text("What Flag is this?"),
              const SizedBox(height:20),
              Image.asset('assets/france.png',height: 120),
              const SizedBox(height:20),
              ElevatedButton(
                onPressed:() {

                },
                child: Text("Button Clicked"),
              )
            ]
          ),
        ),
      ),
    ),  
  );
}