import 'package:dpr_dumy/constant/validator.dart';
import 'package:flutter/material.dart';

import '../constant/custom_inputtextfield.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({super.key});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  TextEditingController controller = TextEditingController();
  TextEditingController dataDateController = TextEditingController();
  TextEditingController dataDateOldController = TextEditingController();
  TextEditingController dataDateNewController = TextEditingController();
  TextEditingController planScopController = TextEditingController();
  TextEditingController planScopOldController = TextEditingController();
  TextEditingController planScopNewController = TextEditingController();
  TextEditingController actualController = TextEditingController();
  TextEditingController actualOldController = TextEditingController();
  TextEditingController actualNewController = TextEditingController();
  TextEditingController planFTMController = TextEditingController();
  TextEditingController planFTMOldController = TextEditingController();
  TextEditingController planFTMNewController = TextEditingController();
  TextEditingController actualFTMController = TextEditingController();
  TextEditingController actualFTMOldController = TextEditingController();
  TextEditingController actualFTMNewController = TextEditingController();
  TextEditingController todayController = TextEditingController();
  TextEditingController todayOldController = TextEditingController();
  TextEditingController todayNewController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  TextEditingController dwgAvailController = TextEditingController();
  TextEditingController dwgAvailOldController = TextEditingController();
  TextEditingController dwgAvailNewController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void validateAndSubmit(BuildContext context) {
    if (formKey.currentState!.validate()) {
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Something wrong")));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 5,
      child: Expanded(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(2, 5),
                      blurRadius: 10)
                ]),
            child: Column(
              children: [
                customExpansionTile(
                  size,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  listContainer(Size size) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        padding: EdgeInsets.all(8.0),
        height: size.height * 0.06,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "data",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {},
                child: Text(
                  "Delete",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  Widget customExpansionTile(
    Size size,
  ) {
    return ExpansionTile(
      title: listContainer(size),
      children: [
        TabBar(tabs: [
          Text(
            "DPR Config",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "DPR Map",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "Import",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "DPR Log",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "DPR Direct",
            style: TextStyle(color: Colors.black),
          ),
        ]),
        Container(
          height: size.height * 0.8,
          width: size.width,
          child: TabBarView(children: [
            DprConfig(),
            DprMap(size),
            Import(size),
            DprLog(),
            DprDirect()
          ]),
        )
      ],
    );
  }

  Widget DprConfig() {
    return Container(
      child: Text("data"),
    );
  }

  Widget DprMap(
    Size size,
  ) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "DPR Map",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Row(
                children: [
                  Text("Sheet Name "),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: size.width * 0.2,
                      height: size.height * 0.05,
                      child: CustomTextFormFields(
                        size: size,
                        controller: controller,
                        hintText: "Overall Progress",
                        //validator: (value) => nameValidator(value, context,"Please enter project name")
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              BuildMapInput(
                size: size,
                valueController: dataDateController,
                oldPositionController: dataDateOldController,
                newPositionController: dataDateNewController,
                title: "Data Date",
              ),
              BuildMapInput(
                size: size,
                valueController: planScopController,
                oldPositionController: planScopOldController,
                newPositionController: planScopNewController,
                title: "Plan Scop",
              ),
              BuildMapInput(
                size: size,
                valueController: actualController,
                oldPositionController: actualOldController,
                newPositionController: actualNewController,
                title: "Actual",
              ),
              BuildMapInput(
                size: size,
                valueController: planFTMController,
                oldPositionController: planFTMOldController,
                newPositionController: planFTMNewController,
                title: "Plan FTM",
              ),
              BuildMapInput(
                size: size,
                valueController: actualController,
                oldPositionController: actualOldController,
                newPositionController: actualNewController,
                title: "Actual FTM",
              ),
              BuildMapInput(
                size: size,
                valueController: todayController,
                oldPositionController: todayOldController,
                newPositionController: todayNewController,
                title: "Today",
              ),
              BuildMapInput(
                size: size,
                valueController: dwgAvailController,
                oldPositionController: dwgAvailOldController,
                newPositionController: dwgAvailNewController,
                title: "DWG Avail",
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        return null;
                      }
                    },
                    child: Text("Submit DPR map")),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Import(Size size) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                        controller: controller,
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
                      controller: controller,
                      hintText: "",
                      labelText: "",
                      textInputType: TextInputType.text,
                      validator: (value) => nameValidator(
                          value, context, "please description"),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
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
                  child: Center(child: Icon(Icons.info,color: Colors.white,),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget DprLog() {
    return Container(
      child: Text("data"),
    );
  }

  Widget DprDirect() {
    return Container(
      child: Text("data"),
    );
  }
}

class Import extends StatelessWidget {
  const Import({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class BuildMapInput extends StatelessWidget {
  Size size;
  TextEditingController valueController;
  TextEditingController oldPositionController;
  TextEditingController newPositionController;
  String title;
  BuildMapInput(
      {Key? key,
      required this.size,
      required this.valueController,
      required this.oldPositionController,
      required this.newPositionController,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(child: Text(title + ":")),
          Expanded(
              flex: 2,
              child: Container(
                  height: 30,
                  padding: EdgeInsets.only(left: 30, right: 50),
                  child: CustomTextFormFields(
                    size: size,
                    controller: valueController,
                    hintText: "Overall Progress",
                  ))),
          Expanded(
              flex: 2,
              child: Container(
                  height: 30,
                  padding: EdgeInsets.only(right: 20),
                  child: CustomTextFormFields(
                    size: size,
                    controller: oldPositionController,
                    hintText: "Overall Progress",
                  ))),
          Expanded(
              flex: 2,
              child: Container(
                  height: 30,
                  padding: EdgeInsets.only(right: 20),
                  child: CustomTextFormFields(
                    size: size,
                    controller: newPositionController,
                    hintText: "Overall Progress",
                  ))),
        ],
      ),
    );
  }
}
