import 'package:file_picker/file_picker.dart';

class CustomFilePicker {
  static pickFiles() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      result.files.forEach((element) {
        print(element.name);
      });
    } else {
      // User canceled the picker
      print("user canceled the picker");
    }
  }
}
  