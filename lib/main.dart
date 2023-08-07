import 'package:flutter/material.dart';
import 'LifeStages.dart';
import 'database.dart';
import 'naviContainer.dart';
import 'navigationBar.dart';
import 'stageLifeView.dart';
import 'pointHistory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  void redirect(String info) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(info),
      ),
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StageLifeView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Life Stages"),
      endDrawer: NaviContainer(),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          if (!(index % 2 == 0)) {
            return Center(
              child: InkWell(
                onTap: () {
                  redirect("test");
                },
                child: SizedBox(
                  width: 320,
                  height: 150.05,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 15,
                        child: Container(
                          width: 284,
                          height: 97,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE9EDF9),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFFCBD7EF)),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 0,
                        child: Container(
                          width: 289,
                          height: 127.05,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 168,
                                top: 0,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                  NetworkImage("https://picsum.photos/200"),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 50,
                                child: SizedBox(
                                  width: 159,
                                  height: 42,
                                  child: Text(
                                    'Married couples with young kids',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF142029),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return Center(
            child: InkWell(
              onTap: () {
                redirect("sss");
              },
              child: SizedBox(
                width: 320,
                height: 150.05,
                child: Stack(
                  children: [
                    Positioned(
                      left: 36,
                      top: 15,
                      child: Container(
                        width: 284,
                        height: 97,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE9EDF9),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFCBD7EF)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 298,
                        height: 127.05,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                NetworkImage("https://picsum.photos/200"),
                              ),
                            ),
                            Positioned(
                              left: 135,
                              top: 38,
                              child: SizedBox(
                                width: 163,
                                height: 36,
                                child: Text(
                                  'Young adults stepping out into society', //put ur text
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: Container(
        width: 56.0, // Width of the circular button
        height: 56.0, // Height of the circular button
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2.0), // Outer border
          color: Color(0xFFFCCF47),
        ),
        child: IconButton(
          onPressed: () {
            // Your onPressed function here
          },
          icon: Icon(Icons.chat_bubble), // Your custom image icon
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
