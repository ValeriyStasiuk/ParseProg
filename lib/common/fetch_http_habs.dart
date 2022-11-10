import 'package:http/http.dart' as http;
import 'package:html/parser.dart';

fetchHttpHabs(url) {
  var client = http.Client();
  return client.get(url);
}
