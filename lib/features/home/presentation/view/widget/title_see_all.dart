import 'package:flutter/material.dart';

import '../../../../../core/theme/styles.dart';

class TitleSeeAll extends StatelessWidget {
  const TitleSeeAll({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Styles.font18blackew700),
        const Spacer(),
        Text("See All", style: Styles.font14blue400w)
      ],
    );
  }
}
