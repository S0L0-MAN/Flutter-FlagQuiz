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
    var countryList = ['france','japan','thailand','solomon'];
    var answer = "";
    List <Map<String,String>> questions =[];
    @override
    void initState(){
    super.initState();
    countryList.shuffle();
}
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
                Image.asset("assets/${countryList[questionNumber-1]}.png"),
                for(var i in countryList)
                buildOption(i, countryList[questionNumber-1]),
                SizedBox(height: 20),
                
   
                Text("Current Score : $score"),
                reset()
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
          if (questionNumber < countryList.length){
          questionNumber++;
          }
          else if(questionNumber == countryList.length){
            questionNumber = 1;
          }
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
  Widget reset(){
    return SizedBox(
      width: 200,
      height:50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        onPressed: (){
          setState(() {
            questionNumber=1;
            score =0;
            countryList.shuffle();
          });
        },
        child: Text("Reset"),
      ),
    );
  
  }
  }
  