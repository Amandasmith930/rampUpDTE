import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:flutter_html_all/flutter_html_all.dart';
// import 'package:flutter_math_fork/flutter_math.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()  {

   // WidgetsFlutterBinding.ensureInitialized();
    //await Firebase.initializeApp();
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(DateMyRoommate());
}

class DateMyRoommate extends StatelessWidget {
 // final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      onGenerateRoute: (RouteSettings settings){
        switch (settings.name){
          case '/':
            return MaterialPageRoute(builder: (context) => HomePage());
            break;
          case '/NewUser':
            return MaterialPageRoute(builder: (context) => NewUser());
            break;
          case '/ReturningUser':
            return MaterialPageRoute(builder: (context) => ReturningUser());
            break;
          case '/Roommate':
            return MaterialPageRoute(builder: (context) =>  Roommate());
            break;
        }
      }



        //home: HomePage(),
       //  initialRoute: '/NewUser',
       //  routes: <String, WidgetBuilder>{
       //    '/': (context) => HomePage(),
       //    '/NewUser': (context) => NewUser(),
       //    '/ReturningUser': (context) => const ReturningUser(),
       //  },
       // initialRoute: '/Roommate',
       //  routes: <String, WidgetBuilder>{
       //    'Roommate': (context) => Roommate(),
        );
  }
}

//homepage: login as username, store user with API
//second page: show pictures of friends and have user click
//third page: input informtation select age, major and interest
class HomePage extends StatelessWidget {
  // Widget html = Html(
  //   data: """
  //       <div>
  //         <h1>Demo Page</h1>
  //         <p>This is a fantastic product that you should buy!</p>
  //         <h3>Features</h3>
  //         <ul>
  //           <li>It actually works</li>
  //           <li>It exists</li>
  //           <li>It doesn't cost much!</li>
  //         </ul>
  //         <!--You can pretty much put any html in here!-->
  //       </div>
  //     """,
  //   //Optional parameters:
  //   backgroundColor: Colors.white70,
  //   onLinkTap: (url) {
  //     // open url in a webview
  //   },
  //   style: {
  //     "div": Style(
  //       block: (
  //        // margin: EdgeInsets.all(16),
  //         border: Border.all(width: 6),
  //         backgroundColor: Colors.grey,
  //       ),
  //       textStyle: TextStyle(
  //         color: Colors.red,
  //       ),
  //     ),
  //   },
  //   onImageTap: (src) {
  //     // Display the image in large form.
  //   },
  // );

  //static get border => null;
  // const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to DateMyRoommate'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: const Text("Login as new user"),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pushNamed(context, '/NewUser');
                },
              ),
              FlatButton(
                  child: const Text("Login as a returning user"),
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.pushNamed(context, '/ReturningUser');
                  }),
              Image.network(
                  'https://googleflutter.com/sample_image.jpg'),
              //Image.file(
                 // heart.png),
            ],
          ),

        ));
  }
}

class NewUser extends StatelessWidget {
  TextEditingController eCtrl = TextEditingController();

  // bool showText = false;
  String username = "";
  String password = "";

  NewUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome New User!'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                decoration:
                    const InputDecoration.collapsed(hintText: "Add Username"),
                onSubmitted: (String text) {
                  username = text;
                },
              ),
              Text("\n\n $username"),
              TextField(
                decoration:
                    const InputDecoration.collapsed(hintText: "Add Password"),
                onSubmitted: (String text) {
                  password = text;
                },
              ),
              Text("\n\n $password"),
              FlatButton(
                child: const Text("Go Back"),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              FlatButton(
                  child: const Text("Next Page"),
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.pushNamed(context, '/Roommate');
                  }),
              IconButton(
                  icon: const Icon(Icons.comment),
                  onPressed: () {
                    // showText = true;
                  }),
            ],
          ),
        ));
  }
}

class ReturningUser extends StatelessWidget {
  TextEditingController eCtrl = TextEditingController();

  // bool showText = false;
  String username = "";
  String password = "";

  ReturningUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome New User!'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                decoration:
                const InputDecoration.collapsed(hintText: "Add Username"),
                onSubmitted: (String text) {
                  username = text;
                },
              ),
              Text("\n\n $username"),
              TextField(
                decoration:
                const InputDecoration.collapsed(hintText: "Add Password"),
                onSubmitted: (String text) {
                  password = text;
                },
              ),
              Text("\n\n $password"),
              FlatButton(
                child: const Text("Go Back"),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              FlatButton(
                  child: const Text("Next Page"),
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.pushNamed(context, '/Roommate');
                  }),
              IconButton(
                  icon: const Icon(Icons.comment),
                  onPressed: () {
                    // showText = true;
                  }),
            ],
          ),
        ));
  }
}

class Roommate extends StatelessWidget {
  TextEditingController eCtrl = TextEditingController();

  // bool showText = false;
  String name = "";
  String year = "";
  String hobby = "";

  Roommate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Create your profile' '$name'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                decoration:
                const InputDecoration.collapsed(hintText: "Add Name"),
                onSubmitted: (String text) {
                  name = text;
                },
              ),
              Text("\n\n $name"),
              TextField(
                decoration:
                const InputDecoration.collapsed(hintText: "Add Year"),
                onSubmitted: (String text) {
                  year = text;
                },
              ),
              Text("\n\n $year"),
              TextField(
                decoration:
                const InputDecoration.collapsed(hintText: "Add hobby"),
                onSubmitted: (String text) {
                  hobby = text;
                },
              ),
              Text("\n\n $hobby"),
              FlatButton(
                child: const Text("Go Back"),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              FlatButton(
                  child: const Text("Home Page"),
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  }),
              IconButton(
                  icon: const Icon(Icons.comment),
                  onPressed: () {
                    // showText = true;
                  }),
            ],
          ),
        ));
  }
}
  // const Roommate({Key? key}) : super(key: key);
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: const Text("Fill out application"),
  //       ),
  //       body: RaisedButton(
  //           child: const Text("GO BACK"),
  //           onPressed: () {
  //             Navigator.pop(context);
  //           }));
  // }

