import 'package:flutter/material.dart';
import 'storyBrain.dart';
import 'story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List stories = List();
Story? current = stories.getHead();


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
              "Destini App",
          style: TextStyle(
            backgroundColor: Colors.transparent
          ),),
        ),
      ),
      body:Container(
        decoration: const BoxDecoration(
          image : DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  current!.getStory(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
              Column(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){
                      current = stories.getNext(1);
                      if (current != null){
                        setState(() {
                          current = current;
                        });
                      }else{
                        stories.restart();
                        setState(() {
                          current = stories.getHead();
                        });
                      }
                    },
                    child: Text(
                      current!.getChoice1(),
                      style: const TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green
                    ),
                    onPressed: (){
                      current = stories.getNext(2);
                      if (current != null){
                        setState(() {
                          current = current;
                        });
                      }
                    },
                    child: Text(
                      current!.getChoice2(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
