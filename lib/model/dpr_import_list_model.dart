class DprImportList {
  bool? error;
  List<Data>? data;
  String? message;

  DprImportList({this.error, this.data, this.message});

  DprImportList.fromJson(Map<String, dynamic> json) {
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
  String? date;
  String? workItem;
  List<Data1>? data;

  Data({this.date, this.workItem, this.data});

  Data.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    workItem = json['work_item'];
    if (json['data'] != null) {
      data = <Data1>[];
      json['data'].forEach((v) {
        data!.add(new Data1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['work_item'] = this.workItem;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data1 {
  String? project;
  int? scope;
  double? workDoneTillDate;
  int? planFTM;
  double? achievedFTM;
  int? achievedForTheDay;

  Data1(
      {this.project,
      this.scope,
      this.workDoneTillDate,
      this.planFTM,
      this.achievedFTM,
      this.achievedForTheDay});

  Data1.fromJson(Map<String, dynamic> json) {
    project = json['Project'];
    scope = json['Scope'];
    workDoneTillDate = json['Work Done Till Date'];
    planFTM = json['Plan FTM'];
    achievedFTM = json['Achieved FTM'];
    achievedForTheDay = json['Achieved For The Day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Project'] = this.project;
    data['Scope'] = this.scope;
    data['Work Done Till Date'] = this.workDoneTillDate;
    data['Plan FTM'] = this.planFTM;
    data['Achieved FTM'] = this.achievedFTM;
    data['Achieved For The Day'] = this.achievedForTheDay;
    return data;
  }
}