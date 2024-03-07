import 'dart:io';

import 'package:ace_applicant/Components/GradientButton1.dart';
import 'package:ace_applicant/Components/ListViewFile.dart';
import 'package:flutter/material.dart';
import "package:file_picker/file_picker.dart";
import '../Components/BadgeButton.dart';

class Resume_Desktop extends StatefulWidget {
  const Resume_Desktop({super.key});

  @override
  State<Resume_Desktop> createState() => _Resume_DesktopState();
}

class _Resume_DesktopState extends State<Resume_Desktop> {
  FilePickerResult? result;
  String _fileText = "";
  bool file_allowed = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Flexible(
      child: Row(
        children: [
          Container(
            width: screenWidth * 0.4,
            child: Card(
              surfaceTintColor: Colors.white,
              shadowColor: Colors.black,
              elevation: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Upload Resume",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            var picked = await FilePicker.platform.pickFiles();

                            if (picked != null) {
                              if (picked.files.first.name.toString().substring(picked.files.first.name.toString().length - 3) == "pdf" ||
                                  picked.files.first.name.toString().substring(
                                          picked.files.first.name
                                                  .toString()
                                                  .length -
                                              3) ==
                                      "PDF" ||
                                  picked.files.first.name.toString().substring(
                                          picked.files.first.name
                                                  .toString()
                                                  .length -
                                              3) ==
                                      "docx" ||
                                  picked.files.first.name.toString().substring(
                                          picked.files.first.name
                                                  .toString()
                                                  .length -
                                              3) ==
                                      "DOCX") {
                                print(picked.files.first.name);
                                setState(() {
                                  _fileText = picked.files.first.name +
                                      " (" +
                                      (picked.files.first.size / 1000)
                                          .toInt()
                                          .toString() +
                                      " KB)";
                                  file_allowed = true;
                                  result = picked;
                                });
                              }
                            } else {
                              setState(() {
                                _fileText =
                                    "Only pdf and docx file extensions allowed!";
                                file_allowed = false;
                                result = null;
                              });
                            }
                          },
                          child: Container(
                            color: Colors.grey[200],
                            height: screenHeight * 0.30,
                            width: (screenWidth * 0.4) * 0.8,
                            child: Center(
                              child: RoundedBadge(
                                  title: "Browse Files",
                                  icon: Icon(
                                    Icons.file_upload,
                                    // color: Color.fromRGBO(65, 105, 225, 1),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        (file_allowed && _fileText != "")
                            ? FinanceListTile(
                                text: _fileText,
                                leadingIcon: Icon(Icons.file_copy),
                                trailingIcon: Icon(Icons.check),
                                onTap: () {})
                            : new Container(),
                        SizedBox(
                          height: 25,
                        ),
                        GradientButtonFb1(text: "Submit", onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Card(
              surfaceTintColor: Colors.white,
              shadowColor: Colors.black,
              elevation: 15,
              child: Center(
                child: Column(
                  children: [Text("Response")],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
