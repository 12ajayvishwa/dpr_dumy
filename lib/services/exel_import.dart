import 'dart:convert';

import 'package:dpr_dumy/model/exel_import_model.dart';
import 'package:http/http.dart' as http;

class ExelImport {
  Future<ExelImportModel> DprExelImport(String path) async {
    Map<String, dynamic> map = {
      "sheet_name": "Overall Progress",
      "file": path
    };
    final response = await http.post(
        Uri.parse("https://dpr-management.gofactz.com/public/api/dpr-import"),
        body: map);

    if (response.statusCode == 201) {
      print("Success");
      return ExelImportModel.fromJson(jsonDecode(response.body));
    }
    return ExelImportModel.fromJson(jsonDecode(response.body));
  }

}