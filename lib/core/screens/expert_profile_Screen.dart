// file_namesignore:
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// import '../../features/chat/presentation/screens/chats_screen.dart';
// import '../widgets/round_button.dart';

// class ExpertProfileScreen extends StatelessWidget {
//   static const routeName = '/expert-profile-screen';

//   const ExpertProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final myUid = FirebaseAuth.instance.currentUser!.uid;
//     String? userId;
//     final uid = userId ?? myUid;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Expert Profile'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             RoundButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed(
//                   ChatsScreen.routeName,
//                 );
//               },
//               label: 'Chats',
//               color: Colors.transparent,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:facebook_clone/features/auth/presentation/screens/expert_login.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/chat/presentation/screens/chats_screen.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';

import '/core/screens/error_screen.dart';
import '/core/screens/loader.dart';
import '/core/widgets/round_button.dart';
import '/features/auth/providers/get_user_info_as_stream_by_id_provider.dart';

import '/features/posts/presentation/widgets/icon_text_button.dart';

class ExpertProfileScreen extends ConsumerWidget {
  const ExpertProfileScreen({
    super.key,
    this.userId,
  });
  final String? userId;
  static const routeName = '/expert-profile-screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final myUid = FirebaseAuth.instance.currentUser!.uid;
    String? userId;
    final uid = userId ?? myUid;
    final userInfo = ref.watch(getUserInfoAsStreamByIdProvider(uid));

    return userInfo.when(
      data: (user) {
        return SafeArea(
          child: Scaffold(
            appBar: userId != myUid ? AppBar() : null,
            backgroundColor: AppColors.whiteColor,
            body: Padding(
              padding: Constants.defaultPadding,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(user.profilePicUrl),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    user.fullName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RoundButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        ChatsScreen.routeName,
                      );
                    },
                    label: 'Chats',
                    color: Colors.transparent,
                  ),
                  const SizedBox(height: 20),
                  _buildProfileInfo(
                    email: user.email,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      _auth.signOut();
                      Navigator.popAndPushNamed(context, ExpertLogin.routeName);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.black.withOpacity(.5),
                          size: size.height * 0.028,
                        ),
                        SizedBox(
                          width: size.width * 0.045,
                        ),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: size.height * 0.021,
                            fontWeight: FontWeight.w600,
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
      },
      error: (error, stackTrace) {
        return ErrorScreen(error: error.toString());
      },
      loading: () {
        return const Loader();
      },
    );
  }

  _buildProfileInfo({
    required String email,
  }) =>
      Column(
        children: [
          IconTextButton(
            icon: Icons.email,
            label: email,
          ),
          const IconTextButton(
            icon: Icons.school,
            label: 'Education:',
          ),
          const IconTextButton(
            icon: Icons.work,
            label: 'Experience:',
          ),
        ],
      );
}
