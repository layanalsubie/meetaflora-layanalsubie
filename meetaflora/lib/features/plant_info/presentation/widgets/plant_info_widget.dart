import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.sw,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: kElevationToShadow[2],
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(title, style: TextStyle(fontSize: 18, fontWeight: .w700)),
          Gap(8),
          Text(content, style: TextStyle(fontSize: 15, height: 1.5)),
        ],
      ),
    );
  }
}
