import 'package:flutter_news/constants/url_constants.dart';
import 'package:flutter_news/models/news_model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

class NewsController extends GetxController {
  Rx<List<NewsModel>> _newsList = Rx<List<NewsModel>>([]);
  Rx<bool> isLoading = false.obs;
  List<NewsModel> get newsList => _newsList.value;

  Future<void> fetchAllNews() async {
    _newsList.value.clear();
    isLoading.value = true;
    final String url = UrlConstants.baseUrl + UrlConstants.newsEndpoint;
    Dio dio = Dio();
    try {
      var response = await dio.get(url);

      if (response.statusCode == HttpStatus.ok) {
        List<dynamic> data = response.data['newsList'];
        for (int i = 0; i < data.length; i++) {
          _newsList.value.add(NewsModel.fromJson(data[i]));
        }
      }
      isLoading.value = false;
    } catch (error) {
      print(error.toString());
    }
  }
}
