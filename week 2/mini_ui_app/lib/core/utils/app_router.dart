import 'package:go_router/go_router.dart';
import 'package:mini_ui_app/features/home/presentation/widgets/bottom_nav_bar.dart';

class AppRouter {
static const navBar='/navBar';
  static const detailsview = '/detailsview';
  static const onboarding = '/onboarding';

  static GoRouter getRouter() {
    return GoRouter(
      initialLocation: navBar,
      routes: [
        GoRoute(
          path: navBar,
          builder: (context, state) => CustomBottomNavBar(),
        ),
     
      ],
    );
  }
}