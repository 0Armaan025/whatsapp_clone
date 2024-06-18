import 'package:flutter/material.dart';

class NewFeaturesWidget extends StatefulWidget {
  const NewFeaturesWidget({super.key});

  @override
  State<NewFeaturesWidget> createState() => _NewFeaturesWidgetState();
}

class _NewFeaturesWidgetState extends State<NewFeaturesWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        children: [],
      ),
    );
  }
}
