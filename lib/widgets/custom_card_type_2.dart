import 'package:flutter/material.dart';
import 'package:tutorial_flutter/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? description;

  const CustomCardType2({super.key, required this.imageUrl, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 25,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/img/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 500),
          ),
          if (description != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 20),
                child: Text(description ?? 'No Title'))
        ],
      ),
    );
  }
}
