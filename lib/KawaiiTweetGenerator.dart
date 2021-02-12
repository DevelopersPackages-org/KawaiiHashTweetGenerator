//かわいいツイート文面生成器 ver 0.9.0
// by 佐藤陽花(@nemu_out@twitter.com)
// under MIT+3 License

void main(List<String> args) {
  KawaiiTweetGenerator kg = KawaiiTweetGenerator();
  print("\n\n");
  args.map((name) => kg.generate(name)).forEach((tweet) => print("$tweet\n"));
}
class KawaiiTweetGenerator{
  String kawaiiTweet = '''&0&1&2&3しか勝たん
&0&1&2&3すき
&0&1&2&3好き
&0&1&2&3とうとい
&0&1&2&3尊い
&0&1&2&3かわいい
&0&1&2&3可愛い
&01日1回の&1&2&3かわいい
&01日n回の&1&2&3可愛い
&0&1&2可愛すぎてキュン死''';
// Hash : &0 = "#", &1 = "", &2 = name, &3 = ""
// Ment : &0 = "", &1 = "@", &2 = name, &3 = " "
  String harassmentBase = "#1日&0回の&1ハラスメント";
  String goSetBase = "#&0と&1はセット";

  String kawaiiGenerate(String name, String mode){
    switch (mode) {
      case "Hash":
        return kawaiiTweet.replaceAll("&0","#").replaceAll("&1","").replaceAll("&2",name).replaceAll("&3","");
      case "Ment":
        return kawaiiTweet.replaceAll("&0","").replaceAll("&1","@").replaceAll("&2",name).replaceAll("&3"," ");
      default:
        return "";
    }
  }
  String harassmentGenerate(String mate, String numb){
    return harassmentBase.replaceAll("&0",numb).replaceAll("&1",mate);

  }
  String goSetGenerate(String a, String b){
    return goSetBase.replaceAll("&0",a).replaceAll("&1",b);

  }
}