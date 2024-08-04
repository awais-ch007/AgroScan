import '../../../features/constants/constants.dart';

import 'package:flutter/material.dart';

class ImageCaptureBtn extends StatelessWidget {
  const ImageCaptureBtn({
    Key? key,
    required this.containerHeight,
    required this.screenHeight,
    required this.takePicture,
  }) : super(key: key);

  final double containerHeight;
  final double screenHeight;
  final VoidCallback takePicture;

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
          Icons.camera_alt,
          color: Colors.white,
          size: screenHeight * 0.07,
        ),
        onPressed: takePicture,
      ),
    );
  }
}
