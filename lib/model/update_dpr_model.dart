class Dpr_import_model {
  bool? error;
  List<Data>? data;
  String? message;

  Dpr_import_model({this.error, this.data, this.message});

  Dpr_import_model.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? id;
  int? userId;
  String? sheetName;
  String? name;
  String? cellValue;
  int? rowPosition;
  int? rowNewPosition;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.userId,
      this.sheetName,
      this.name,
      this.cellValue,
      this.rowPosition,
      this.rowNewPosition,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    sheetName = json['sheet_name'];
    name = json['name'];
    cellValue = json['cell_value'];
    rowPosition = json['row_position'];
    rowNewPosition = json['row_new_position'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['sheet_name'] = this.sheetName;
    data['name'] = this.name;
    data['cell_value'] = this.cellValue;
    data['row_position'] = this.rowPosition;
    data['row_new_position'] = this.rowNewPosition;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}