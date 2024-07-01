import 'dart:io';
import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_round_frontend/api/api.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  File? file;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width,
        h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: w,
      height: h,
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
            width: w * 0.6,
            height: h * 0.3,
            child: (file == null)
                ? Container()
                : Icon(
                    Icons.file_present_outlined,
                    size: w * 0.5,
                  )),
        FloatingActionButton(
            onPressed: () async {
              uploadFile();
            },
            child: Text("Select"))
      ]),
    ));
  }

  void uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    final rawData = await rootBundle.loadString("assets/company1.csv");
        var list = const CsvToListConverter().convert(rawData);
        // final fileName = result.files.first.name;
        // print(fileName);
        print("hello");
        print(list[0]);
    try {
      if (result != null) {
        // final fileBytes = result.files.first.bytes;
        
        // file = File.fromRawPath(fileBytes!);
        // print(file);
      } else {
        // User canceled the picker
        print("User Canceled");
      }
      setState(() {
        api().uploadFile(file!);
      });
    } catch (e) {
      print(e);
    }
  }
}
