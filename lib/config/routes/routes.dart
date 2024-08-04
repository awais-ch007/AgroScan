import 'package:facebook_clone/features/auth/presentation/screens/expert_login.dart';
import 'package:facebook_clone/features/chat/presentation/screens/chat_screen.dart';
// import 'package:facebook_clone/features/chat/presentation/screens/chats_screen.dart';
import 'package:facebook_clone/features/ui/root_page.dart';
import 'package:facebook_clone/features/ui/screens/profile_page.dart';
import 'package:flutter/cupertino.dart';

import '../../core/screens/expert_profile_Screen.dart';
import '../../core/screens/profile_screen.dart';
import '../../features/auth/presentation/screens/create_account_screen.dart';

import '../../features/chat/presentation/screens/chats_screen.dart';
import '/core/screens/error_screen.dart';

import '/features/posts/presentation/screens/comments_screen.dart';
import '/features/posts/presentation/screens/create_post_screen.dart';

class Routes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CreateAccountScreen.routeName:
        return _cupertinoRoute(
          const CreateAccountScreen(),
        );

      case RootPage.routeName:
        return _cupertinoRoute(
          const RootPage(),
        );
      case CreatePostScreen.routeName:
        return _cupertinoRoute(
          const CreatePostScreen(),
        );
      case CommentsScreen.routeName:
        final postId = settings.arguments as String;
        return _cupertinoRoute(
          CommentsScreen(postId: postId),
        );
      case ProfilePage.routeName:
        return _cupertinoRoute(
          // ignore: prefer_const_constructors
          ProfilePage(),
        );
      case ExpertProfileScreen.routeName:
        return _cupertinoRoute(
          const ExpertProfileScreen(),
        );

      case ProfileScreen.routeName:
        final userId = settings.arguments as String;
        return _cupertinoRoute(
          ProfileScreen(
            userId: userId,
          ),
        );

      case ChatScreen.routeName:
        final userId = settings.arguments as String;

        return _cupertinoRoute(
          ChatScreen(
            userId: userId,
          ),
        );

      case ChatsScreen.routeName:
        return _cupertinoRoute(
          const ChatsScreen(),
        );

      case ExpertLogin.routeName:
        // final userId = settings.arguments as String;
        return _cupertinoRoute(
          const ExpertLogin(),
        );
      default:
        return _cupertinoRoute(
          ErrorScreen(
            error: 'Wrong Route provided ${settings.name}',
          ),
        );
    }
  }

  static Route _cupertinoRoute(Widget view) => CupertinoPageRoute(
        builder: (_) => view,
      );

  Routes._();
}
