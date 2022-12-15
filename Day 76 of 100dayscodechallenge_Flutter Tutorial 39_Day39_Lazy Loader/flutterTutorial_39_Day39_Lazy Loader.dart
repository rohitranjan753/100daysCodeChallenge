//Date 15/12/2022 08:05 PM

//Flutter Learning Day 39.
//Topics covered is Expansion Lazy Loader.


import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example',
      home: new MyHomePage(title: 'Scrollview'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> data = [];
  int currentLength = 0;

  final int increment = 10;
  bool isLoading = false;

  @override
  void initState() {
    _loadMore();
    super.initState();
  }

  Future _loadMore() async {
    setState(() {
      isLoading = true;
    });

    // Add in an artificial delay
    await new Future.delayed(const Duration(seconds: 2));
    for (var i = currentLength; i <= currentLength + increment; i++) {
      data.add(i);
    }
    setState(() {
      isLoading = false;
      currentLength = data.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll View'),
        backgroundColor: Colors.red,
      ),
      body: LazyLoadScrollView(
        isLoading: isLoading,
        onEndOfPage: () => _loadMore(),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, position) {
            return DemoItem(position);
          },
        ),
      ),
    );
  }
}

class DemoItem extends StatelessWidget {
  final int position;

  const DemoItem(
      this.position, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.blueAccent,
                  height: 40.0,
                  width: 40.0,
                ),
                SizedBox(width: 8.0),
                Text("Item $position"),
              ],
            ),
            Text(
                "GeeksforGeeks.org was created with a goal "
                    "in mind to provide well written, well "
                    "thought and well explained solutions for selected"
                    " questions. The core team of five super geeks"
                    " constituting of technology lovers and computer"
                    " science enthusiasts have been constantly working"
                    " in this direction ."),
          ],
        ),
      ),
    );
  }
}