// ignore_for_file: sort_child_properties_last, prefer_const_constructors, unused_element, unused_import

import 'package:facebook_clone/features/auth/presentation/screens/login_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import '../../../core/screens/profile_screen.dart';

import '../../../core/widgets/round_button.dart';

import '../../chat/presentation/screens/chats_screen.dart';
import '../../constants/constants.dart';
import '../widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const routeName = '/profile-page';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    String? email = _auth.currentUser!.email;

    Size size = MediaQuery.of(context).size;
    return Hero(
      tag: 'profile-page-tag',
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16),
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.35,
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: ExactAssetImage('assets/icons/profilee.jpg'),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Constants.primaryColor.withOpacity(.5),
                    width: 5.0,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              SizedBox(
                width: size.width * .3,
                child: Row(
                  children: [
                    Text(
                      'username',
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontSize: size.height * 0.018,
                      ),
                    ),
                    SizedBox(
                        height: size.height * 0.024,
                        child: Image.asset("assets/icons/verified.png")),
                  ],
                ),
              ),
              Text(
                email!,
                style: TextStyle(
                  color: Constants.blackColor.withOpacity(.3),
                ),
              ),
              // const SizedBox(height: 10),
              // RoundButton(
              //   onPressed: () {
              //     Navigator.of(context).pushNamed(
              //       ChatsScreen.routeName,
              //     );
              //   },
              //   label: 'Chats',
              //   color: Colors.transparent,
              // ),
              SizedBox(
                height: size.height * 0.4,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(ProfileScreen.routeName,
                            arguments: 'WZf4iVVdbiS4a1Gi1Zaj4VNPZ9A2');
                      },
                      child: ProfileWidget(
                        icon: Icons.person,
                        title: 'Expert 1',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.008,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(ProfileScreen.routeName,
                            arguments: 'qy14nRbjJOgkVfw043blDE7f2uT2');
                      },
                      child: ProfileWidget(
                        icon: Icons.person,
                        title: 'Expert 2',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.008,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(ProfileScreen.routeName,
                            arguments: 'CjmggO4vg5U1dddPL0lHF4PL0062');
                      },
                      child: ProfileWidget(
                        icon: Icons.person,
                        title: 'Expert 3',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _auth.signOut();
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: const LoginScreen(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: ProfileWidget(
                        icon: Icons.logout,
                        title: 'Log Out',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










// import 'package:facebook_clone/features/auth/providers/get_user_info_by_id_provider.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../../core/screens/loader.dart';
// import '../../constants/constants.dart';
// import '../widgets/profile_widget.dart';

// class ProfilePage extends ConsumerWidget {
//   const ProfilePage({
//     Key? key,
//     required this.userId,
//   }) : super(key: key);

//   final String userId;

//   static const routeName = '/profile-page';
//   // final String userId;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     Size size = MediaQuery.of(context).size;
//     final userInfo = ref.watch(getUserInfoByIdProvider(userId));
//     final myUid = FirebaseAuth.instance.currentUser!.uid;
//     return userInfo.when(
//       data: (user) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 15,
//             vertical: 1,
//           ),
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             height: size.height,
//             width: size.width,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   width: size.width * 0.35,
//                   child: const CircleAvatar(
//                     radius: 60,
//                     backgroundImage:
//                         ExactAssetImage('assets/icons/profilee.jpg'),
//                   ),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Constants.primaryColor.withOpacity(.5),
//                       width: 5.0,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: size.height * 0.010,
//                 ),
//                 SizedBox(
//                   width: size.width * .3,
//                   child: Row(
//                     children: [
//                       Text(
//                         'username',
//                         style: TextStyle(
//                           color: Constants.blackColor,
//                           fontSize: size.height * 0.018,
//                         ),
//                       ),
//                       SizedBox(
//                           height: size.height * 0.024,
//                           child: Image.asset("assets/icons/verified.png")),
//                     ],
//                   ),
//                 ),
//                 Text(
//                   '',
//                   style: TextStyle(
//                     color: Constants.blackColor.withOpacity(.3),
//                   ),
//                 ),
//                 SizedBox(
//                   height: size.height * 0.040,
//                 ),
//                 SizedBox(
//                   height: size.height * 0.5,
//                   width: size.width,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.of(context).pushNamed(
//                               ProfileScreen.routeName,
//                               arguments: 'WZf4iVVdbiS4a1Gi1Zaj4VNPZ9A2');
//                         },
//                         child: ProfileWidget(
//                           icon: Icons.person,
//                           title: 'Expert 1',
//                         ),
//                       ),
//                       SizedBox(
//                         height: size.height * 0.012,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.of(context).pushNamed(
//                               ProfileScreen.routeName,
//                               arguments: 'WZf4iVVdbiS4a1Gi1Zaj4VNPZ9A2');
//                         },
//                         child: ProfileWidget(
//                           icon: Icons.person,
//                           title: 'Expert 2',
//                         ),
//                       ),
//                       SizedBox(
//                         height: size.height * 0.012,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.of(context).pushNamed(
//                               ProfileScreen.routeName,
//                               arguments: 'SXgGUK7nBfUrbuelYf1LtsMtC3i1');
//                         },
//                         child: ProfileWidget(
//                           icon: Icons.person,
//                           title: 'Expert 3',
//                         ),
//                       ),
//                       SizedBox(
//                         height: size.height * 0.012,
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.of(context).pushNamed(
//                               ProfileScreen.routeName,
//                               arguments: 'WZf4iVVdbiS4a1Gi1Zaj4VNPZ9A2');
//                         },
//                         child: ProfileWidget(
//                           icon: Icons.person,
//                           title: 'Expert 4',
//                         ),
//                       ),

//                       // GestureDetector(
//                       //   onTap: () {

//                       //     Navigator.pushReplacement(
//                       //         context,
//                       //         PageTransition(
//                       //             child: const LoginScreen(),
//                       //             type: PageTransitionType.bottomToTop));
//                       //   },
//                       //   child: ProfileWidget(
//                       //     icon: Icons.logout,
//                       //     title: 'Log Out',
//                       //   ),
//                       // ),
//                       TextButton(
//                           onPressed: () {
//                             ref.read(authProvider).signOut();
//                           },
//                           child: const Text('Log Out')),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//       error: (error, stackTrace) {
//         return Text(error.toString());
//       },
//       loading: () {
//         return const Loader();
//       },
//     );
//   }
// }
