import 'package:dpr_dumy/widgets/dpr_reports.dart';
import 'package:dpr_dumy/widgets/project_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DprMapPage extends StatefulWidget {
  const DprMapPage({super.key});

  @override
  State<DprMapPage> createState() => _DprMapPageState();
}

class _DprMapPageState extends State<DprMapPage> {
  String? selectedProjectValue;
  List<String> selectProjectList = [
    "SMS",
    "EMD",
    "Rail&Logistics",
    "RMHS",
    "BF",
    "HSM",
    "Sinter",
    "Sinter RMHS"
  ];
  List? selectVender = [
    "SEB",
    "HSM",
    "L&T",
    "Vensar- SMS",
    "JVM",
    "BF Overall",
    "L&T-SMS",
    "Vrinda-SMS",
    "JSSL-SMS",
    "VREW-SMS",
    "Voita Green-SMS"
  ];
  List<String> selectWorkPackages = [
    "SMS",
    "EMD",
    "Rail&Logistics",
    "RMHS",
    "BF",
    "HSM",
    "Sinter",
    "Sinter RMHS"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("DPR MAP"),
        actions: [
          ElevatedButton(
            
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => DprReport()));
            }, child: Text("DPR report"))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: size.height * 0.05,
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: DropdownButton(
                        hint: Text(
                            'Select Project'), // Not necessary for Option 1
                        value: selectedProjectValue,

                        underline: Container(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedProjectValue = newValue;
                          });
                        },
                        items: selectProjectList.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: size.height * 0.05,
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: DropdownButton(
                        hint: Text(
                            'Select Project'), // Not necessary for Option 1
                        value: selectedProjectValue,

                        underline: Container(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedProjectValue = newValue;
                          });
                        },
                        items: selectProjectList.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: size.height * 0.05,
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: DropdownButton(
                        hint: Text(
                            'Select Work Pack.'), // Not necessary for Option 1
                        value: selectedProjectValue,

                        underline: Container(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedProjectValue = newValue;
                          });
                        },
                        items: selectWorkPackages.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: size.height * 0.05,
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.all(8.0),
                            hintText: 'Select Project'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: () {}, child: Text("+ Create"))
              ],
            ),
          ),
          ProjectList()
        ],
      ),
    );
  }
}
