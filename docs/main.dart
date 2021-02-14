import "dart:html";

void main() {
  String kai = (querySelector('#usernames') as InputElement)?.value;
  String textBody = "test";
  querySelectorAll('input[name=tweet-type]').onClick.listen(clickHandler);
}
void clickHandler(MouseEvent e){
  String type = (querySelector('input[name=tweet-type]:checked') as InputElement)?.value;
  textView(type);
  
}
void textView(String text){
  String thisURL ="https://developerspackages-org.github.io/KawaiiTweetGenerator/";
  String intentURL = "https://twitter.com/intent/tweet?text=${text}&url=${thisURL}&related=DevPackOfficial";
  querySelector('#main-text')?.text = text;
  querySelector('#tweet')?.setAttribute("href",intentURL);
}