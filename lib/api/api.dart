import 'dart:io';

import 'package:dio/dio.dart';

class api {
  String baseUrl = "http://localhost:3000";
  Dio dio = Dio();
  void uploadFile(File f) async {
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(f.path),
    });
    var res = await dio.post('$baseUrl/company/uploadFile', data: formData);
    print(res.data);
  }
}
