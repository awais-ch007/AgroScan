import 'package:facebook_clone/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
     body: Column(
       children: [
         GestureDetector(
           // onTap: signUserIn,

           onTap: () {
             Navigator.pushReplacement(
                 context,
                 PageTransition(
                     child: const LoginScreen(),
                     type: PageTransitionType.bottomToTop));
           },

           child: Container(
             width: size.width,
             decoration: BoxDecoration(
               // color: Constants.primaryColor,
               borderRadius: BorderRadius.circular(10),
             ),
             padding:
             const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
             child: const Center(
               child: Text(
                 'Sign In',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 18.0,
                 ),
               ),
             ),
           ),
         ),
       ],
     ),


    );
  }
}
