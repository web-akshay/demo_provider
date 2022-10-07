import 'package:demo_provider/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CountProvider>(context).count;
    return AppBar(
      title: const Text('AppBar'),
      actions:  [
         Text(counter.toString(),
         style: const TextStyle(fontSize: 20.0),),

            Consumer<CountProvider>(
              builder: (ctx,countProvider,child) {
                return Text(
                  ' ${countProvider.count}',
                  style: Theme.of(context).textTheme.headline4,
                );
              }
            )
      ],
    );
  }
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}