import 'package:flutter/material.dart';

class FoodyItem extends StatelessWidget {
  const FoodyItem({super.key});

  static const routname = '/fooddetail';

  @override
  Widget build(BuildContext context) {
    final argId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('details'),
      ),
      body:  Center(
        child: Text('hello $argId'),
      ),
    );
  }
}
