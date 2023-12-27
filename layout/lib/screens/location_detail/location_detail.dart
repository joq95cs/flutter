import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout/screens/location_detail/text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner('lib/assets/images/mount_fuji.jpg'),
          TextSection('fkkfkfhjdjdjjdjdj',
              'kwsjdhjfdjdkskjdjfndjdjdjjd55544kjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj7445'),
          TextSection('fkkfkfhjdjdjjdjdj',
              'kwsjdhjfdjdkskjdjfndjdjdjjd55544kjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj7445'),
          TextSection('fkkfkfhjdjdjjdjdj',
              'kwsjdhjfdjdkskjdjfndjdjdjjd55544kjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj7445'),
        ],
      ),
    );
  }
}
