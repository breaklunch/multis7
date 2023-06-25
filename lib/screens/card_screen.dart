import 'package:flutter/material.dart';
import 'package:lab07/widgets/widget_card1.dart';
import 'package:lab07/widgets/widget_card2.dart';
import 'package:lab07/widgets/widget_card3.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: const [
          WidgetCard1(),
          SizedBox(height: 10),
          WidgetCard2(),
          SizedBox(height: 10),
          WidgetCard3(),
          SizedBox(height: 10),
        ],
        ), 
      ),
    );
  }
}
