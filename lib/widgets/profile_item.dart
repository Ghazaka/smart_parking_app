import 'package:flutter/material.dart';
import '../extensions/string_extension.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
    this.dataType,
    this.value, {
    Key? key,
  }) : super(key: key);

  final String dataType;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            dataType.trim().capitalize(),
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'OpenSans',
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Text(
            value.trim(),
            style: const TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w600,
              fontSize: 19,
            ),
          )
        ],
      ),
    );
  }
}