import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new MyHomePage(title: 'flutter_html Example'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ستم سکھلائے گا رسم وفا ایسے نہیں ہوتا',
            style: TextStyle(fontFamily: "Jameel", fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Poetry());
  }
}

List<String> poetry = [
  "ستم سکھلائے گا رسم وفا ایسے نہیں ہوتا",
  "صنم دکھلائیں گے راہ خدا ایسے نہیں ہوتا",
  "گنو سب حسرتیں جو خوں ہوئی ہیں تن کے مقتل میں",
  "مرے قاتل حساب خوں بہا ایسے نہیں ہوتا",
  "جہان دل میں کام آتی ہیں تدبیریں نہ تعزیریں",
  "یہاں پیمان تسلیم و رضا ایسے نہیں ہوتا",
  "ہر اک شب ہر گھڑی گزرے قیامت یوں تو ہوتا ہے"
      "مگر ہر صبح ہو روز جزا ایسے نہیں ہوتا",
  "رواں ہے نبض دوراں گردشوں میں آسماں سارے"
      "جو تم کہتے ہو سب کچھ ہو چکا ایسے نہیں ہوتا"
];

List<Widget> poetryWidget() {
  List<Widget> list = <Widget>[];
  list.add(
    Text(
      'غز ل',
      style: TextStyle(
        fontFamily: "Jameel",
        fontSize: 18,
      ),
    ),
  );
  for (var i = 0; i < poetry.length; i++) {
    list.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: getPeotryWords(
          poetry[i].split(" "),
        ),
      ),
    );
  }
  return list;
}

List<Widget> getPeotryWords(List<String> words) {
  List<Widget> list = <Widget>[];
  for (var i = 0; i < poetry.length; i++) {
    list.add(
      Text(
        words[i],
        style: TextStyle(
          fontFamily: "Jameel",
          fontSize: 18,
        ),
      ),
    );
  }
  return list;
}

class Poetry extends StatelessWidget {
  const Poetry({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: poetryWidget(),
        ),
      ),
    );
  }
}
