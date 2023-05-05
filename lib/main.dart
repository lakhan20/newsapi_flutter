
import 'package:flutter/material.dart';
import 'package:newsapi/service/apiService.dart';

import 'model/article.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(title: Text("News App"),),
        body: FutureBuilder(
          future: ApiService().getArticle(),
          builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot){
            if(snapshot.hasData)
              {
                return Text("Hurrrrrrreee");
              }
            return Center(child: CircularProgressIndicator());
          },
        ),
      );


  }
}
