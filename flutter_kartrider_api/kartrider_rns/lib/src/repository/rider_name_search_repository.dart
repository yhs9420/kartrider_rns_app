import 'package:dio/dio.dart';
import 'package:kartrider_rns/src/models/rider_statistics_model.dart';
import 'package:xml/xml.dart';

class RiderNameSearchRepository {
  late var _dio;
  RiderNameSearchRepository() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "https://api.nexon.co.kr",
        headers: {
          'Authorization':
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NvdW50X2lkIjoiMTI0MTk0NDU2OCIsImF1dGhfaWQiOiIyIiwidG9rZW5fdHlwZSI6IkFjY2Vzc1Rva2VuIiwic2VydmljZV9pZCI6IjQzMDAxMTM5MyIsIlgtQXBwLVJhdGUtTGltaXQiOiI1MDA6MTAiLCJuYmYiOjE2MzAyODQwMTQsImV4cCI6MTY0NTgzNjAxNCwiaWF0IjoxNjMwMjg0MDE0fQ.PJhLMidbC8X2JgKsU59Z46064t7r0tcFSZltGkHPwHU'
        },
      ),
    );
  }

  fetchRiderNameSearchStatistics() async {
    var response = await _dio.get("/kart/v1.0/users/nickname/카드L");

    final document = XmlDocument.parse(response.data);
    final results = document.findAllElements('accessId');

    if (results.isNotEmpty) {
      return RiderStatisticsModel.fromXml(results.first);
    } else {
      return Future.value(null);
    }
  }
}
