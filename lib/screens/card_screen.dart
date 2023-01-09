import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://images.pexels.com/photos/2127956/pexels-photo-2127956.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                description: 'Alpes Suizos'),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://images.pexels.com/photos/1103972/pexels-photo-1103972.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                description: 'Bosques Peru'),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://images.pexels.com/photos/2499744/pexels-photo-2499744.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://images.pexels.com/photos/949774/pexels-photo-949774.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://images.pexels.com/photos/2161989/pexels-photo-2161989.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://images.pexels.com/photos/1107717/pexels-photo-1107717.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                description: 'Hermoso Paisaje'),
            SizedBox(height: 100),
          ],
        ));
  }
}
