import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Proident occaecat ullamco amet amet Lorem cupidatat tempor occaecat consequat. Magna elit duis tempor esse exercitation esse ut non aute elit dolore ullamco elit id. .'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
