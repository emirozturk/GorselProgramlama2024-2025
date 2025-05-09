import 'dart:convert';
import 'dart:io';

import 'package:proje_frontend/models/response.dart';
import 'package:http/http.dart' as http;

class Request {
  static String address = "http://localhost:5050/api";

  static Future<Response> postWithoutToken(String url, var body) async {
    try {
      final response = await http.post(Uri.parse('$address/$url'),
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode(body.toJson()));
      return Response.fromJson(jsonDecode(response.body));
    } catch (e) {
      if (e is SocketException) {
        return Response.fail(e.message.toString());
      } else {
        return Response.fail(e.toString());
      }
    }
  }

  static Future<Response> get( String url,var body,String token) async {
    try {
      final response = await http.get(Uri.parse('$address/$url'), headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer ${token}'
      });
      return Response.fromJson(jsonDecode(response.body));
    } catch (e) {
      if (e is SocketException) {
        return Response.fail(e.message.toString());
      } else {
        return Response.fail(e.toString());
      }
    }
  }

  static Future<Response> post(String url, var body,String token) async {
    try {
      final response = await http.post(Uri.parse('$address/$url'),
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${token}'
          },
          body: jsonEncode(body.toMap()));
      return Response.fromJson(jsonDecode(response.body));
    } catch (e) {
      if (e is SocketException) {
        return Response.fail(e.message.toString());
      } else {
        return Response.fail(e.toString());
      }
    }
  }

  static Future<Response> put(String url, var body,String token) async {
    try {
      final response = await http.put(Uri.parse('$address/$url'),
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${token}'
          },
          body: jsonEncode(body.toMap()));
      return Response.fromJson(jsonDecode(response.body));
    } catch (e) {
      if (e is SocketException) {
        return Response.fail(e.message.toString());
      } else {
        return Response.fail(e.toString());
      }
    }
  }

  static Future<Response> delete(String url, var body,String token) async {
    try {
      final response = await http.delete(Uri.parse('$address/$url'),
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${token}'
          },
          body: body != null ? jsonEncode(body.toMap()) : null);
      return Response.fromJson(jsonDecode(response.body));
    } catch (e) {
      if (e is SocketException) {
        return Response.fail(e.message.toString());
      } else {
        return Response.fail(e.toString());
      }
    }
  }
}