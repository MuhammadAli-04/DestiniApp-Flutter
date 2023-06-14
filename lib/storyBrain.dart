import 'story.dart';


class List{
  late Story _head;
  static Story? _current;
  
  Story getHead(){
    return _head;
  }

  Story? getNext(int choice){
    switch (choice){
      case 1:
        if(_current?.getLeft() != null){
          _current = _current?.getLeft();
          return _current;
        }
      case 2:
        if(_current?.getRight() != null){
          _current = _current?.getRight();
          return _current;
        }
    }
    return null;
  }

  void restart(){
    _current = _head;
  }
  
  void setStories(){
    Story story0 = Story(
        "'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.'",
        'I\'ll hop in. Thanks for the help!',
        'Better ask him if he\'s a murderer first.'
    );
    
    Story story1 = Story(
        'He nods slowly, unphased by the question.',
        'At least he\'s honest. I\'ll climb in.',
        'Wait, I know how to change a tire.'
    );

    Story story2 = Story(
      'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      'I love Elton John! Hand him the cassette tape.',
        'It\'s him or me! You take the knife and stab him.'
    );

    Story story3 = Story(
      'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        'Restart',
        ''
    );

    Story story4 = Story(
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        'Restart',
        ''
    );

    Story story5 = Story(
      'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      'Restart',
      ''
    );

    story0.setLeft(story2);
    story0.setRight(story1);

    story1.setLeft(story2);
    story1.setRight(story3);
    
    story2.setLeft(story5);
    story2.setRight(story4);


    _head = story0;
    _current = _head;
  }

  List(){
    setStories();
  }
}