import 'dart:convert';

import 'package:dpr_dumy/model/dpr_view_model.dart';
import 'package:dpr_dumy/model/update_dpr_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<DPRViewModel> dprView() async {
    Map<String, dynamic> map = {
      "user_id": "1",
      "sheet_name": "Civil Top Sheet"
    };
    final response = await http.post(
        Uri.parse("https://dpr-management.gofactz.com/public/api/dpr-map-view"),
        body: map);

    if (response.statusCode == 200) {
      print("Success");
      return DPRViewModel.fromJson(jsonDecode(response.body));
    }
    return DPRViewModel.fromJson(jsonDecode(response.body));
  }

  // Future<String> updateDprMap(
  //     sheetName,
  //     dataDate,
  //     dataDateOld,
  //     dataDateNew,
  //     planScope,
  //     planScopeOld,
  //     planScopeNew,
  //     actual,
  //     actualOld,
  //     actualNew,
  //     planFTMOld,
  //     planFTMNew,
  //     actualFTM,
  //     actualFTMOld,
  //     actualFTMNew,
  //     today,
  //     todayOld,
  //     todayNew,
  //     dwgAvail,
  //     dwgAvailOld,
  //     dwgAvailNew) {
        
  //     }

  
}
