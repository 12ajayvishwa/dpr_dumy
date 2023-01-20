class DPRViewModel {
  bool? error;
  Data? data;
  String? message;

  DPRViewModel({this.error, this.data, this.message});

  DPRViewModel.fromJson(Map<String, dynamic> json) {
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
  String? sheetName;
  DataDate? dataDate;
  DataDate? totalScope;
  DataDate? actulaTillDate;
  DataDate? planFTM;
  DataDate? actualFTM;
  DataDate? today;
  DataDate? dWGAvail;
  Manpower? manpower;
  Manpower? changeReasonForPlanFTM;
  DataDate? workItem;

  Data(
      {this.sheetName,
      this.dataDate,
      this.totalScope,
      this.actulaTillDate,
      this.planFTM,
      this.actualFTM,
      this.today,
      this.dWGAvail,
      this.manpower,
      this.changeReasonForPlanFTM,
      this.workItem});

  Data.fromJson(Map<String, dynamic> json) {
    sheetName = json['sheet_name'];
    dataDate = json['Data Date'] != null
        ? new DataDate.fromJson(json['Data Date'])
        : null;
    totalScope = json['Total Scope'] != null
        ? new DataDate.fromJson(json['Total Scope'])
        : null;
    actulaTillDate = json['Actula Till Date'] != null
        ? new DataDate.fromJson(json['Actula Till Date'])
        : null;
    planFTM = json['Plan FTM'] != null
        ? new DataDate.fromJson(json['Plan FTM'])
        : null;
    actualFTM = json['Actual FTM'] != null
        ? new DataDate.fromJson(json['Actual FTM'])
        : null;
    today = json['Today'] != null ? new DataDate.fromJson(json['Today']) : null;
    dWGAvail = json['DWG Avail'] != null
        ? new DataDate.fromJson(json['DWG Avail'])
        : null;
    manpower = json['Manpower'] != null
        ? new Manpower.fromJson(json['Manpower'])
        : null;
    changeReasonForPlanFTM = json['Change Reason for plan FTM'] != null
        ? new Manpower.fromJson(json['Change Reason for plan FTM'])
        : null;
    workItem = json['Work Item'] != null
        ? new DataDate.fromJson(json['Work Item'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sheet_name'] = this.sheetName;
    if (this.dataDate != null) {
      data['Data Date'] = this.dataDate!.toJson();
    }
    if (this.totalScope != null) {
      data['Total Scope'] = this.totalScope!.toJson();
    }
    if (this.actulaTillDate != null) {
      data['Actula Till Date'] = this.actulaTillDate!.toJson();
    }
    if (this.planFTM != null) {
      data['Plan FTM'] = this.planFTM!.toJson();
    }
    if (this.actualFTM != null) {
      data['Actual FTM'] = this.actualFTM!.toJson();
    }
    if (this.today != null) {
      data['Today'] = this.today!.toJson();
    }
    if (this.dWGAvail != null) {
      data['DWG Avail'] = this.dWGAvail!.toJson();
    }
    if (this.manpower != null) {
      data['Manpower'] = this.manpower!.toJson();
    }
    if (this.changeReasonForPlanFTM != null) {
      data['Change Reason for plan FTM'] =
          this.changeReasonForPlanFTM!.toJson();
    }
    if (this.workItem != null) {
      data['Work Item'] = this.workItem!.toJson();
    }
    return data;
  }
}

class DataDate {
  String? cellValue;
  int? rowPosition;
  int? rowNewPosition;

  DataDate({this.cellValue, this.rowPosition, this.rowNewPosition});

  DataDate.fromJson(Map<String, dynamic> json) {
    cellValue = json['cell_value'];
    rowPosition = json['row_position'];
    rowNewPosition = json['row_new_position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cell_value'] = this.cellValue;
    data['row_position'] = this.rowPosition;
    data['row_new_position'] = this.rowNewPosition;
    return data;
  }
}

class Manpower {
  Null? cellValue;
  Null? rowPosition;
  Null? rowNewPosition;

  Manpower({this.cellValue, this.rowPosition, this.rowNewPosition});

  Manpower.fromJson(Map<String, dynamic> json) {
    cellValue = json['cell_value'];
    rowPosition = json['row_position'];
    rowNewPosition = json['row_new_position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cell_value'] = this.cellValue;
    data['row_position'] = this.rowPosition;
    data['row_new_position'] = this.rowNewPosition;
    return data;
  }
}