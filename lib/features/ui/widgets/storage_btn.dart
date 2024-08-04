import '../../../features/constants/constants.dart';

import 'package:flutter/material.dart';

class StorageBtn extends StatelessWidget {
  const StorageBtn({
    Key? key,
    required this.containerHeight,
    required this.screenHeight,
    required this.getImage,
  }) : super(key: key);

  final double containerHeight;
  final double screenHeight;
  final VoidCallback getImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerHeight * 0.12,
      height: containerHeight * 0.12,
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          Icons.storage,
          color: Colors.white,
          size: screenHeight * 0.07,
        ),
        onPressed: getImage,
      ),
    );
  }
}
