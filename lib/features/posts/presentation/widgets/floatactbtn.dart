// class LoadPageWidget extends StatelessWidget {
//   final bool isVisible;
//
//   const LoadPageWidget({this.isVisible = false});
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: 16,
//       right: 16,
//       child: AnimatedOpacity(
//         duration: Duration(milliseconds: 500),
//         opacity: isVisible ? 1.0 : 0.0,
//         child: SlideTransition(
//           position: Tween<Offset>(
//             begin: Offset(1.0, 0.0),
//             end: Offset.zero,
//           ).animate(
//             CurvedAnimation(
//               parent: AnimationController(
//                 vsync: const TestVSync(),
//                 duration: Duration(milliseconds: 500),
//               )..forward(),
//               curve: Curves.easeInOut,
//             ),
//           ),
//           child: FloatingActionButton.extended(
//             onPressed: () {
//               // Add your onPressed functionality here
//             },
//             icon: Icon(Icons.edit, size: 18, color: Colors.white),
//             label: Text(
//               'Ask Community',
//               style: TextStyle(fontSize: 18, color: Colors.white),
//             ),
//             backgroundColor: Color(0xff296e48),
//           ),
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import '../screens/create_post_screen.dart';
import 'package:flutter/material.dart';

class LoadPageWidget extends StatelessWidget {
  final bool isVisible;

  const LoadPageWidget({required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.of(context).pushNamed(CreatePostScreen.routeName);
      },
      elevation: 20,
      icon: Icon(Icons.edit, size: 16, color: Colors.white),
      label: Text(
        'Ask ',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
      backgroundColor: Color(0xff296e48),
    );
  }
}
