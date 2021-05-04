import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'model/profile.dart';

class ProfileTopSection extends StatelessWidget {
  final Profile profile;

  ProfileTopSection(this.profile);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: profile.profileImages
          .map((e) => Image.network(
                e,
                width: MediaQuery.of(context).size.width,
                height: 370,
                fit: BoxFit.cover,
              ))
          .toList(),
      options: CarouselOptions(height: 370.0),
    );
  }
}
