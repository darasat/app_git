import 'package:http/http.dart' as http;

class Github {
  final String userName;
  final String url = 'https://api.github.com/';
  static String client_id = 'ID CLIENT AQUI';
  static String client_secret = 'ID SECRET AQUI';

  final String query = "?client_id=${client_id}&client_secret=${client_secret}";

  Github(this.userName);

  Future<http.Response> fetchUser() {
    return http.get(url + 'users/' + userName + query);
  }

  Future<http.Response> fetchFollowing() {
    return http.get(url + 'users/' + userName + '/following' + query);
  }
}
