import 'package:dpr_dumy/services/exel_import.dart';
import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant/custom_inputtextfield.dart';
import '../constant/validator.dart';

class WebFilePicker extends StatefulWidget {
  const WebFilePicker({super.key});

  @override
  State<WebFilePicker> createState() => _WebFilePickerState();
}

class _WebFilePickerState extends State<WebFilePicker> {
  final GlobalKey exportKey = GlobalKey();
  final manPowerController = TextEditingController();
  final changeReasonController = TextEditingController();

  FilePickerCross? filePickerCross;

  FilePickerResult? result;
  String _fileString = '';
  String? lastFiles;
  FileQuotaCross quota = FileQuotaCross(quota: 10, usage: 0);

  // @override
  // void initState() {
  //   FilePickerCross.listInternalFiles()
  //       .then((value) => setState(() => lastFiles = value.toString()));
  //   FilePickerCross.quota().then((value) => setState(() => quota = value));
  //   super.initState();
  // }

  // void submitExelFile(String path) async {
  //   var res = await ExelImport().DprExelImport(path);
  //   if (res == "Import Sucessfully") {
  //     print("imported successfully");
  //   } else {
  //     print("Fials");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Import",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Container(
        width: size.width * 0.8,
        height: size.height * 0.001,
        color: Colors.black12,
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text("Manpower(Yesterday)"),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: size.height * 0.06,
                width: size.width * 0.3,
                padding: EdgeInsets.only(left: 30, right: 50),
                child: CustomTextFormFields(
                    size: size,
                    controller: manPowerController,
                    hintText: "Select manpower type"),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text("Change reason for plan FTM"),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: size.height * 0.1,
                width: size.width * 0.3,
                padding: EdgeInsets.only(left: 30, right: 50),
                child: DescriptionField(
                  size: size,
                  controller: changeReasonController,
                  hintText: "",
                  labelText: "",
                  textInputType: TextInputType.text,
                  validator: (value) =>
                      nameValidator(value, context, "please description"),
                ),
              )
            ],
          )
        ],
      ),
      SizedBox(
        height: 18,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.07,
            width: size.width * 0.8,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.circular(4)),
            child: Row(
              children: [
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.04,
                  color: Colors.blue,
                  child: Center(
                    child: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Please select and upload the ",
                      style: TextStyle(
                        color: Colors.blue,
                      )),
                  TextSpan(
                      text: "  Data File",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "  only .xls or .xlsx files are accepted",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w400))
                ]))
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  height: size.height * 0.05,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 1),
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(result!.toString()),
                  )),
              SizedBox(
                width: 8,
              ),
              ElevatedButton(
                  onPressed: () async {
                    var picked = await FilePickerWeb.platform.pickFiles();
                    if (picked != null) {
                      print(picked.files.first.name);
                      setState(() {
                        result = picked;
                      });
                    }
                  },
                  child: Text("Upload Exel File"))
            ],
          ),
          SizedBox(
            height: 18,
          ),
          ElevatedButton(
              onPressed: () {
                // submitExelFile(filePickerCross?.path ?? "unknown");
              },
              child: Container(
                  height: size.height * 0.06,
                  width: size.width * 0.12,
                  child: Center(
                      child: Text(
                    "Execute",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ))))
        ],
      ),
    ]

            // ListView(
            //     padding: const EdgeInsets.all(8),
            //     children: <Widget>[

            //       Text(
            //         'Last files',
            //         style: Theme.of(context).textTheme.headline5,
            //       ),

            //       (lastFiles == null)
            //           ? const Center(
            //               child: CircularProgressIndicator(),
            //             )
            //           : ElevatedButton(
            //           onPressed: () => _selectFile(context),
            //           child: const Text('Open File...'),
            //         ),

            //       (filePickerCross == null)
            //           ? const Text('Open a file first, to save')
            //           : ElevatedButton(
            //               key: exportKey,
            //               onPressed: _selectSaveFile,
            //               child: const Text('Save as...'),
            //             ),
            //       // Text(
            //       //   'File system details',
            //       //   style: Theme.of(context).textTheme.headline5,
            //       // ),
            //       // Text('Quota: ${(quota.quota / 1e6).round()} MB'),
            //       // Text(
            //       //     'Usage: ${(quota.usage / 1e6).round()}; Remaining: ${(quota.remaining / 1e6).round()}'),
            //       // Text('Percentage: ${quota.relative.roundToDouble()}'),
            //       // Text(
            //       //   'File details',
            //       //   style: Theme.of(context).textTheme.headline5,
            //       // ),
            //       InkWell(

            //         onTap:
            //           _selectSaveFile,
            //         child: Text(
            //             '${filePickerCross?.path ?? 'unknown'} '),
            //       ),
            //       // Text('File length: ${filePickerCross?.length ?? 0}\n'),
            //       // Text('File as String: $_fileString\n'),
            //     ],
            //   ),
            ));
  }

  void _selectFile(context) {
    FilePickerCross.importMultipleFromStorage().then((filePicker) {
      setFilePicker(filePicker[0]);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('You selected ${filePicker.length} file(s).'),
        ),
      );

      setState(() {});
    });
  }

  void _selectSaveFile() {
    RenderBox renderBox =
        exportKey.currentContext!.findRenderObject() as RenderBox;
    Offset position = renderBox.localToGlobal(Offset.zero);
    filePickerCross!.exportToStorage(
        subject: filePickerCross!.fileName,
        sharePositionOrigin: Rect.fromLTWH(
            //
            position.dx,
            position.dy,
            renderBox.size.width,
            renderBox.size.height));
  }

  setFilePicker(FilePickerCross filePicker) => setState(() {
        filePickerCross = filePicker;
        filePickerCross!.saveToPath(path: filePickerCross!.fileName!);
        FilePickerCross.quota().then((value) {
          setState(() => quota = value);
        });

        try {
          _fileString = filePickerCross.toString();
        } catch (e) {
          _fileString = 'Not a text file. Showing base64.\n\n' +
              filePickerCross!.toBase64();
        }
      });
}
