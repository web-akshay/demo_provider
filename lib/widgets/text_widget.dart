import 'package:demo_provider/provider/count_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Consumer<CountProvider>(
              builder: (ctx,countProvider,child) {
                return Text(
                  ' ${countProvider.count}',
                  style: Theme.of(context).textTheme.headline4,
                );
              }
            );
  }
}