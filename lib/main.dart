import 'package:flutter/material.dart';
//import 'package:youtube_player/youtube_player.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
//import 'package:youtube_api/youtube_api.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Video',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Fitness'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> vid= ['UBMk30rjy0o','ISrATjuJFt0','ECxYJcnvyMw','UItWltVZZmE','dRngqiyLQ3Y','ePylP2XmNRs','WDIGXWZhC4M','egmchjtG_2Y','IC8SfzaG8_A','9MbMrOuVFXA','oRkBzvUnmlQ','y05IQfSoJn0','Aq54VPYyDV0'];
  List<String> img=['assets/fbw.jpg','assets/brightside.png','assets/7minute.png', 'assets/beginerworkout.jpg','assets/15Minworkout.jpg','assets/dia1.jpg','assets/dia2.jpg','assets/dia3.jpg','assets/dia4.jpg','assets/dia5.jpg','assets/dia6.jpg','assets/dia7.jpg','assets/chol1.jpg','assets/chol2.png'];
  TextEditingController textEditingControllerId = new TextEditingController();
  static String key = 'AIzaSyBHsTocwY3Z-uFvSpox3zVWHue-xtDGaKg';
  /*YoutubeAPI ytApi = new YoutubeAPI(key,maxResults: 20,type:'video');
  List<YT_API> ytResult = [];

  callAPI() async {
    print('UI callled');
    String query = "fitness";
    ytResult = await ytApi.search(query);
  }
  @override
  void initState() {
    super.initState();
    setState(() {
      callAPI();
    });
    print('hello');
    //print(call_api);
  }*/

/*  void didChangeDependencies(){
    super.didChangeDependencies(); }*/
  void playYoutubeVideo(String viid) {
    FlutterYoutube.onVideoEnded.listen((onData) {
      //perform your action when video playing is done
    });

    FlutterYoutube.playYoutubeVideoById(
      apiKey: "AIzaSyBHsTocwY3Z-uFvSpox3zVWHue-xtDGaKg",
      videoId: viid,
      backgroundColor: Colors.white,
      autoPlay: true,
      fullScreen: false
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
            child: ListView.builder(
                itemCount: vid.length,//ytResult.length,
                itemBuilder: (_, int index) => ListItem(index)
            ),
    ),);
  }

  Widget ListItem(index){
    //print(ytResult[index].url.split("=")[1]);
    /*return GestureDetector(
      child: new Card(
        child: new Container(
          margin: EdgeInsets.symmetric(vertical: 7.0),
          padding: EdgeInsets.all(12.0),
            child: new Row(
              children: <Widget>[
                new Image.network(ytResult[index].thumbnail['default']['url'],),
                new Padding(padding: EdgeInsets.only(right: 20.0)),
                new Expanded(child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        ytResult[index].title,
                        softWrap: true,
                        style: TextStyle(fontSize:18.0),
                      ),
                      new Padding(padding: EdgeInsets.only(bottom: 1.5)),
                      new Text(
                        ytResult[index].channelTitle,
                        softWrap: true,
                      ),
                    ]
                ))
              ],
            ),
          ),
      ),
      onTap: FlutterYoutube.playYoutubeVideoById(
          apiKey: "AIzaSyBHsTocwY3Z-uFvSpox3zVWHue-xtDGaKg",
          videoId: ytResult[index].url.split("=")[1],
          backgroundColor: Colors.white,
          autoPlay: false,
          fullScreen: false
      )
    );*/
    return new Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          new FlatButton(
            //splashColor: Colors.blueGrey,
            onPressed: (){playYoutubeVideo(vid[index]);},
            child:Image.asset(img[index],height: 200,fit: BoxFit.fill,width: double.infinity),
          ),

        ],
      ),
    );
  }
}
