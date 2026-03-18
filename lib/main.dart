  import 'package:flutter/material.dart';

  void main(){
    runApp(
      MaterialApp(
        home:FlagQuiz()
      ),  
    );
  }
  class FlagQuiz extends StatefulWidget {
    const FlagQuiz({super.key});

    @override
    State<FlagQuiz> createState() => _FlagQuizState();
  }

  class _FlagQuizState extends State<FlagQuiz> {
    int score = 0;
    int questionNumber = 1;
    var countryList = ['France','Egypt','Aus','Japan'];
    var answer = "France";
    List <Map<String,String>> questions =[];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text("Flag Quiz"),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child : Column(
              children:[
                Text("Question : $questionNumber"),
                const SizedBox(height:20),
                Text("What Flag is this?"),
                for (var i in assets) questions[images]=i
                // const SizedBox(height:20),
                // Image.asset('assets/france.png',height: 120),
                // const SizedBox(height:20),
                // for (var i in countryList)
                //   buildOption(i,answer),
                
                

                Text("Current Score : $score")
              ]
            ),
          ),
        );
    }
    Widget buildOption(String countryName,String answer){
    return SizedBox(
    width: 200,
    height: 50,
    child: ElevatedButton(
    onPressed: () {
      if(countryName == answer){
        setState((){
          score++;
          questionNumber++;
        });
        
        }else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Wrong!"))
          );
        }
      },
      child: Text(countryName),
    )
    );
  }
  }
  