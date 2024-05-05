import 'dart:convert';
import 'package:http/http.dart' as http;

class EventPromo {
  final int id;
  final String authorid;
  final String category;
  final String title;
  final String slug;
  final String content;
  final String featuredimage;
  final String createdat;
  final String updatedat;

  EventPromo({
    required this.id,
    required this.authorid,
    required this.category,
    required this.title,
    required this.slug,
    required this.content,
    required this.featuredimage,
    required this.createdat,
    required this.updatedat,
  });

  factory EventPromo.fromJson(Map<String, dynamic> json) {
    return EventPromo(
      id: json['id'],
      authorid: json['author_id'],
      category: json['category'],
      title: json['title'],
      slug: json['slug'],
      content: json['content'],
      featuredimage: json['featured_image'],
      createdat: json['created_at'],
      updatedat: json['updated_at'],
    );
  }
}

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