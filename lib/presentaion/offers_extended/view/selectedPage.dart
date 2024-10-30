import 'package:app/presentaion/offers_extended/widgets/selectedNews.dart';
import 'package:flutter/material.dart';

class Selectedpage extends StatelessWidget {
  const Selectedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        children: [SelectedNews()],
      ),
    );
  }
}
