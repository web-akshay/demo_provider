import 'dart:developer';

import 'package:demo_provider/provider/count_provider.dart';
import 'package:demo_provider/widgets/app_bar_widget.dart';
import 'package:demo_provider/widgets/text_widget.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {

  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    log('build method called---->');
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
           const TextWidget(),
            // Consumer<CountProvider>(
            //   builder: (ctx,countProvider,child) {
            //     return Text(
            //       ' ${countProvider.count}',
            //       style: Theme.of(context).textTheme.headline4,
            //     );
            //   }
            // ),

            ElevatedButton(onPressed: (){
              log('hello');
            }, child: const Text('hello'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
    
           FloatingActionButton(
            key: const Key('value2'),

            onPressed: ()=>context.read<CountProvider>().decrementCount(),
            tooltip: 'Increment',
            child: const Icon(Icons.text_decrease),
          ),
                FloatingActionButton(
            key: const Key('value1'),
            // onPressed:(){Provider.of<CountProvider>(context,listen: false).incrementCount();},
            onPressed: ()=>context.read<CountProvider>().incrementCount(),

            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
