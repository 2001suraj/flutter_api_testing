import 'package:flutter/material.dart';
Padding customTitleSubtitleColumn(context,
    {required String title, required String subtitle}) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w300, color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subtitle,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}