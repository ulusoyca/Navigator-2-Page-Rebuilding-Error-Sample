import 'package:flutter/material.dart';
import 'package:nav2rebuild/router/my_app_route_information_parser.dart';
import 'package:nav2rebuild/router/my_app_router_delegate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MyAppRouterDelegate delegate = MyAppRouterDelegate();
  final MyAppRouteInformationParser parser = MyAppRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: delegate,
      routeInformationParser: parser,
    );
  }
}

class HomeScreen extends StatefulWidget {
  final VoidCallback onTap;

  HomeScreen({this.onTap, Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() => _counter++);
  }

  @override
  Widget build(BuildContext context) {
    print("rebuilding home");
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Text('$_counter', style: Theme.of(context).textTheme.headline4),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _incrementCounter();
            widget.onTap();
          },
          child: Icon(Icons.add),
        ));
  }
}
