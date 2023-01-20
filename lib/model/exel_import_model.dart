class Exel_Import_Model {
  bool? error;
  Data? data;
  String? message;

  Exel_Import_Model({this.error, this.data, this.message});

  Exel_Import_Model.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? userId;
  String? dprConfigId;
  String? dataDate;
  int? totalScope;
  double? actualTillDate;
  int? planFtm;
  double? actualFtm;
  int? today;
  int? dwgAvail;
  Null? manpower;
  Null? changeReasonForPlanFtm;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data(
      {this.userId,
      this.dprConfigId,
      this.dataDate,
      this.totalScope,
      this.actualTillDate,
      this.planFtm,
      this.actualFtm,
      this.today,
      this.dwgAvail,
      this.manpower,
      this.changeReasonForPlanFtm,
      this.updatedAt,
      this.createdAt,
      this.id});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    dprConfigId = json['dpr_config_id'];
    dataDate = json['data_date'];
    totalScope = json['total_scope'];
    actualTillDate = json['actual_till_date'];
    planFtm = json['plan_ftm'];
    actualFtm = json['actual_ftm'];
    today = json['today'];
    dwgAvail = json['dwg_avail'];
    manpower = json['manpower'];
    changeReasonForPlanFtm = json['change_reason_for_plan_ftm'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['dpr_config_id'] = this.dprConfigId;
    data['data_date'] = this.dataDate;
    data['total_scope'] = this.totalScope;
    data['actual_till_date'] = this.actualTillDate;
    data['plan_ftm'] = this.planFtm;
    data['actual_ftm'] = this.actualFtm;
    data['today'] = this.today;
    data['dwg_avail'] = this.dwgAvail;
    data['manpower'] = this.manpower;
    data['change_reason_for_plan_ftm'] = this.changeReasonForPlanFtm;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}