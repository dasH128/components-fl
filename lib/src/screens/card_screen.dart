import 'package:flutter/material.dart';

import 'package:app_componentes/src/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widgets'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        children: const [
          CustomCardType1(),
          SizedBox(height: 30),
          CustomCardType2(
            imageUrl:
                'https://www.wallpapers4u.org/wp-content/uploads/earth_planet_atmosphere_space_67758_1920x1080.jpg',
          ),
          SizedBox(height: 30),
          CustomCardType2(
            name: 'En el spacio sideral',
            imageUrl:
                'https://4.bp.blogspot.com/-W0_HZx9NWfI/XD45qcBbaII/AAAAAAAAAn4/paWYCWR06l092c0vcBV2G9HAChXB3nhRwCKgBGAs/w0/astronaut-space-13-4k.jpg',
          )
        ],
      ),
    );
  }
}
