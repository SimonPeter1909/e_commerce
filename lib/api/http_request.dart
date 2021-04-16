import 'package:http/http.dart' as http;

class Request {
  Future<String> httpPost({Map<String, String> body}) async {
    try {
      var res = await http.post(Uri.parse("https://script.google.com/macros/s/AKfycbxRa6BIbLEobyPO2ljgWK8GAdIvWmXcZohfhjX-IwXOXkyr2xEtVDdL/exec"), body: body);
      print('response -${res.body}');
      if (res.statusCode == 302) {
        try {
          var response = await http.get(Uri.parse(res.headers['location']));
          print('response -${res.body}');
          if (response.statusCode == 200) {
            return response.body;
          } else {
            return null;
          }
        } catch (e) {
          return null;
        }
      } else if (res.statusCode == 200) {
        return res.body;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

}