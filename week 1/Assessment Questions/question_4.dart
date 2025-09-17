abstract class BaseController {
  void initState();
  void dispose();
}

abstract class AnimationController {
  void handleAnimation();
}

abstract class NetworkController {
  void handleNetwork();
}


class SimpleButtonController implements BaseController {
  @override
  void initState() => print('Init button');

  @override
  void dispose() => print('Dispose button');
}


class FancyButtonController implements BaseController, AnimationController {
  @override
  void initState() => print('Init fancy button');

  @override
  void dispose() => print('Dispose fancy button');

  @override
  void handleAnimation() => print('Handling animation in fancy button');
}


class NetworkWidgetController implements BaseController, NetworkController {
  @override
  void initState() => print('Init network widget');

  @override
  void dispose() => print('Dispose network widget');

  @override
  void handleNetwork() => print('Handling network request');
}
