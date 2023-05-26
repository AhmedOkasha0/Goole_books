import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_handel/core/model/BooksModel.dart';

class ApiService {

  static Future<BooksModel> getNewsBooks() async {
    var url = Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=programming');
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var booksModel = BooksModel.fromJson(json);
      return booksModel;
    } on Exception catch (error) {
      print('errorrrrr');
      throw (error.toString());
    }
  }




}