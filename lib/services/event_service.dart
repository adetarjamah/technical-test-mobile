import 'dart:convert';
import 'package:ade_anyartech/models/event_api.dart';
import 'package:http/http.dart' as http;

class EventService {
  static const String baseUrl = 'http://staging.triwarna.co.id/api';
  static Future<List<EventPromo>> fetchEvent() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/content'));
      final body = response.body;
      final result = jsonDecode(body);
      List<EventPromo> event = List<EventPromo>.from(
        result['data'].map(
          (event) => EventPromo.fromJson(event),
        ),
      );
      return event;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}