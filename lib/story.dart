class Story{

  late String _story;
  late Story? _left;
  late Story? _right;
  late String _choice1;
  late String _choice2;

  void setLeft(Story left){
    _left = left;
  }

  void setRight(Story right){
    _right = right;
  }

  String getStory(){
    return _story;
  }

  Story? getLeft(){
    return _left;
  }

  Story? getRight(){
    return _right;
  }

  String getChoice1(){
    return _choice1;
  }

  String getChoice2(){
    return _choice2;
  }

  Story(String story,String choice1, String choice2, {Story? left = null,Story? right = null}){
    _story = story;
    _choice1= choice1;
    _choice2= choice2;
    _left = left;
    _right = right;
  }

}