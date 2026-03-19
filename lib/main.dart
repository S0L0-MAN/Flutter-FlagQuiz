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
    List countryList = ['france','japan','thailand','solomon','india'];
    var correctAnswer = "";
    @override
    void initState(){
    super.initState();
    countryList.shuffle();
    }
   

    
    @override
    Widget build(BuildContext context) {
      correctAnswer = countryList[questionNumber-1];
      List shuffleList = [];
      List distractors = countryList.sublist(0,4).where((country) => country !=correctAnswer).toList();
                shuffleList.add(correctAnswer);
                shuffleList.addAll(distractors.take(3));
                shuffleList.shuffle();
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
                
                for (var i in shuffleList)
                buildOption(i, correctAnswer),
                
                SizedBox(height: 20),
                
   
                Text("Current Score : $score"),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    
                    reset(),
                    finish()
                  ]
                    
                )
                
              ]
            ),
          ),
        );
    }
    Widget buildOption(String countryName,String answer){
    return Padding(
    padding:EdgeInsets.all(16),
    child: SizedBox(
    width: 200,
    height: 30,

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
    ));
  }
  Widget reset(){
    return Padding(
      padding:EdgeInsets.all(2),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red , foregroundColor: Colors.white),
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
  Widget finish(){
    return Padding(padding: EdgeInsets.all(2),
    child:ElevatedButton(
      style:ElevatedButton.styleFrom(backgroundColor: Colors.green , foregroundColor: Colors.white),
      onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("score : $score"))
        );
        setState(() {
          score = 0;
        });
        
      },
      child: Text("Finished"),
    )
    );
  }
  }
  