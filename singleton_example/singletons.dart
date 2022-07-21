// Eager singleton
class NavigationService {
  static NavigationService _instance = NavigationService._init();

  NavigationService._init();

  static NavigationService get instance => _instance;
}

// Lazy singleton
class NetworkService {
  static NetworkService? _instance;
  static NetworkService get instance {
    if (_instance == null) _instance = NetworkService._init();
    return _instance!;
  }

  NetworkService._init();
}