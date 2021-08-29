// import 'package:dio/dio.dart';

// class RiderNameSearchRepository {
//   late var _dio;
//   RiderNameSearchRepository() {
//     _dio = Dio(
//       BaseOptions(
//         baseUrl: "https://api.nexon.co.kr",
//         queryParameters: {
//           'serviceKey':
//               'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2NvdW50X2lkIjoiMTI0MTk0NDU2OCIsImF1dGhfaWQiOiIyIiwidG9rZW5fdHlwZSI6IkFjY2Vzc1Rva2VuIiwic2VydmljZV9pZCI6IjQzMDAxMTM5MyIsIlgtQXBwLVJhdGUtTGltaXQiOiI1MDA6MTAiLCJuYmYiOjE2MzAyNTk1MzYsImV4cCI6MTY0NTgxMTUzNiwiaWF0IjoxNjMwMjU5NTM2fQ.26ii_nZkqbu3kmqqt_-JMQ7K5139LKG8OZ4IJxhSIdU'
//         },
//       ),
//     );
//   }

//   fetchRiderNameSearchStatistics() async {
//     var response = await _dio.get('/kart/v1.0/users/nickname/{nickname}');
//     print(response);
//   }
// }
