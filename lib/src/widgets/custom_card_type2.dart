import 'package:app_componentes/src/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    this.name,
  }) : super(key: key);

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 15,
      shadowColor: AppTheme.primary.withOpacity(0.4),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/loading.gif'),
            width: double.infinity,
            height: 270,
            fit: BoxFit.cover,
          ),
          if (name != null)
            Container(
              padding: const EdgeInsets.only(right: 20, top: 15, bottom: 15),
              alignment: AlignmentDirectional.centerEnd,
              child: Text(name ?? 'No Name'),
            )
        ],
      ),
    );
  }
}
