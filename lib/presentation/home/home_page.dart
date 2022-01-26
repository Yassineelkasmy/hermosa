import 'package:flutter/material.dart';
import 'package:hermosa/presentation/home/feed/feed_page.dart';
import 'package:hermosa/presentation/home/widgets/app_bar_widget.dart';
import 'package:hermosa/providers/auth/auth_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Scaffold(
      appBar: buildAppBar(user!),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildHomePages(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1,
      ),
    );
  }

  List<Widget> _buildHomePages() {
    return [
      FeedPage(),
      FeedPage(),
      FeedPage(),
      FeedPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.explore),
        title: ("Settings"),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.favorite),
        title: ("Settings"),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: ("Settings"),
        activeColorPrimary: Colors.black,
      ),
    ];
  }
}
