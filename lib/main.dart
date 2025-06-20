import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  var count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Calculate")),
          backgroundColor: Colors.deepPurple.withOpacity(.5),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            height: 250,
            width: 250,
            child: Center(
                child: Text(
                    "$count",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                  ),
                )
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                height: 50,
                width: 50,
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      count--;
                    });
                  },
                  child: Icon(Icons.remove,color: Colors.white,),
                ),
              ),
              
              SizedBox(width: 10),
              
              Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
                height: 50,
                width: 50,
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        count=0;
                      });
                    },
                    child: Text("AC",style: TextStyle(color: Colors.white),),
                ),
              ),
              
              SizedBox(width: 10),
              
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                height: 50,
                width: 50,
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      count++;
                    });
                  },
                  child: Icon(Icons.add,color: Colors.white,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

