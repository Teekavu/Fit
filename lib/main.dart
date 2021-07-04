import 'package:flutter/material.dart';

import 'TaskModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fit and flow',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();

  List<TaskModel> tasks = [];

  TaskModel currentTask;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Fit and flow"),
      ),
      body: Container(
        padding:EdgeInsets.all(32),
        child: Column(
          children: <Widget>[

            ElevatedButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Database1()),
                );
              },
              child: const Text('Insert and display Swimmer name'),
            ),

            ElevatedButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myprofile()),
                );
              },
              child: const Text('My Profile'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mycourse()),
                );
              },
              child: const Text('Mycourse'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              },
              child: const Text('Setting'),
            ),

            ElevatedButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Da()),
                );
              },
              child: const Text('Daily achievement'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => St()),
                );
              },
              child: const Text('Statistic'),
            ),


          ],
        ),
      ),
    );
  }
}

class Database1 extends StatefulWidget {
  @override
  DB1 createState() => DB1();
}

class DB1 extends State<Database1> {
  List<TaskModel> tasks = [];
  final textController = TextEditingController();
  TaskModel currentTask;
  @override
  Widget build(BuildContext context) {
    final TodoHelper _todoHelper = TodoHelper();
    return Scaffold(
      appBar: AppBar(
        title: Text("Insert and display Swimmer name"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: textController,
          ),


          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {

              currentTask = TaskModel(name: textController.text);
              _todoHelper.insertTask(currentTask);

            },
            child: const Text('insert'),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () async{

              List<TaskModel> list = await _todoHelper.getAllTask();

              setState(() {
                tasks = list;
              });

            },
            child: const Text('show all swimmer'),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index){
                return ListTile(
                  leading: Text("${tasks[index].id}"),
                  title: Text("${tasks[index].name}"),
                );
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: tasks.length,

            ),
          )


        ],
      ),
    );
  }
}


class Myprofile extends StatefulWidget {
  @override
  Profile createState() => Profile();
}

class Profile extends State<Myprofile> {
  List<TaskModel> tasks = [];
  final textController = TextEditingController();
  TaskModel currentTask;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My profile"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[


          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myprofile()),
              );
            },
            child: const Text('Profile'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mycourse()),
              );
            },
            child: const Text('Mycourse'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
            child: const Text('Setting'),
          ),


        ],
      ),
    );
  }
}

class Mycourse extends StatefulWidget {
  @override
  Mycourse1 createState() => Mycourse1();
}

class Mycourse1 extends State<Mycourse> {
  List<TaskModel> tasks = [];
  final textController = TextEditingController();
  TaskModel currentTask;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My course"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[


          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myprofile()),
              );
            },
            child: const Text('Profile'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mycourse()),
              );
            },
            child: const Text('Mycourse'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
            child: const Text('Setting'),
          ),


        ],
      ),
    );
  }
}

class Setting extends StatefulWidget {
  @override
  Setting1 createState() => Setting1();
}

class Setting1 extends State<Setting> {
  List<TaskModel> tasks = [];
  final textController = TextEditingController();
  TaskModel currentTask;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[


          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myprofile()),
              );
            },
            child: const Text('Profile'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mycourse()),
              );
            },
            child: const Text('Mycourse'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
            child: const Text('Setting'),
          ),


        ],
      ),
    );
  }
}

class Da extends StatefulWidget {
  @override
  Dai createState() => Dai();
}

class Dai extends State<Da> {
  List<TaskModel> tasks = [];
  final textController = TextEditingController();
  TaskModel currentTask;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Daily achievement"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[


          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myprofile()),
              );
            },
            child: const Text('Profile'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mycourse()),
              );
            },
            child: const Text('Mycourse'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
            child: const Text('Setting'),
          ),


        ],
      ),
    );
  }
}

class St extends StatefulWidget {
  @override
  Sta createState() => Sta();
}

class Sta extends State<St> {
  List<TaskModel> tasks = [];
  final textController = TextEditingController();
  TaskModel currentTask;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Statistic"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[


          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myprofile()),
              );
            },
            child: const Text('Profile'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mycourse()),
              );
            },
            child: const Text('Mycourse'),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
            child: const Text('Setting'),
          ),


        ],
      ),
    );
  }
}

