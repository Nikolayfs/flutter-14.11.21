  import 'package:flutter/material.dart';

  void main() {
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Homepage(),
      );
    }
  }

  class Homepage extends StatefulWidget {
    Homepage({Key key}) : super(key: key);

    @override
    _HomepageState createState() => _HomepageState();
  }

  class _HomepageState extends State<Homepage> {

    

  List<Widget> smsList = [];
  void createSingleSms() {
  Widget text = Text("PryBit");
  smsList.add(text);

  debugPrint("Sms Add");
  }

    @override
    Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      return Scaffold(
        body: SafeArea(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return smsList[index];
              },
              itemCount: smsList.length,
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: size.width,
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: size.width * 0.8,
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Введите текст сообщенияъ",
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  )
                  ,
                ),
                ),
              IconButton(
                icon: Icon(
                  Icons.send
                ),
                onPressed: () {
                  createSingleSms();
                },
              )
            ],
          ),
        )
      );
    }
  }
