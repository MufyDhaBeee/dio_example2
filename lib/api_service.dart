import 'package:dio/dio.dart';
import 'package:dio_example2/dio_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<Post>> fetchPosts() async {
    try {
      // Dio automatically processes JSON data, no manual jsonDecode needed
      final response = await _dio.get('https://jsonplaceholder.typicode.com/posts');

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((json) => Post.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load posts');
      }
    } on DioException catch (e) {
      // Handle server-side errors, timeouts, or internet drops
      throw Exception('Dio error: ${e.message}');
    }
  }
}
