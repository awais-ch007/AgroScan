// ignore_for_file: unused_import, prefer_final_fields, avoid_print, non_constant_identifier_names, depend_on_referenced_packages, unnecessary_import, library_private_types_in_public_api, prefer_const_constructors, avoid_unnecessary_containers, unrelated_type_equality_checks, prefer_interpolation_to_compose_strings, override_on_non_overriding_member

import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  TextEditingController Name = TextEditingController();
  // String _first = "Muhammad";
  // String _second = "Siddeeq";
  String Names = "";
  // late String _email;
  // double _drawerIconSize = 24;
  // double _drawerFontSize = 20;
  late File _image = File("");
  final picker = ImagePicker();
  static String result = "";
  bool checkresult = false;

  Future<String> fetchPost(File check) async {
    try {
      var url = Uri.parse("http://ce5f-34-148-18-145.ngrok-free.app/upload");

      var newrequest = http.MultipartRequest(
        "POST",
        url,
      );
      String fileName2 = check.path.split('/').last;

      final picture = await http.MultipartFile.fromPath('file', check.path,
          filename: fileName2);

      newrequest.files.add(picture);

      var response = await newrequest.send();

      var responseData = await response.stream.toBytes();

      String resul = String.fromCharCodes(responseData);

      setState(() {
        checkresult = true;
        result = resul;
      });
    } catch (e) {
      return "_model";
    }
    return "_model";
  }

  Future getfromCamreImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getfromgalleryImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void Initiate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(),
                  const SizedBox(
                    height: 30,
                  ),
                  // Container(
                  //   child: TextFormField(
                  //     controller: Name,
                  //     decoration: ThemeHelper().textInputDecoration(
                  //         'Full Name', 'Enter your Full name'),
                  //     onChanged: (value) {
                  //       Names = Name.text.toString();
                  //
                  //     },
                  //     validator: (val) {
                  //       if (val!.isEmpty) {
                  //         return "Please first name ";
                  //       }
                  //       return null;
                  //     },
                  //   ),
                  //   decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  // ),
                  // SizedBox(height: 30,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.deepOrange,
                          height: 150,
                          width: 190,
                          child: ElevatedButton(
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                'Gallery',
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            onPressed: () {
                              getfromgalleryImage();
                            },
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          color: Colors.deepOrange,
                          height: 150,
                          width: 190,
                          child: ElevatedButton(
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                'Camera',
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            onPressed: () {
                              getfromCamreImage();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 30),

                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text(
                          'check'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      onPressed: () {
                        if (_image != "") {
                          fetchPost(_image);
                        } else {}
                      },
                    ),
                    // decoration: ThemeHelper().buttonBoxDecoration(context),
                  ),
                  const SizedBox(height: 30),
                  Center(
                      child: Text(
                    _image.path == "" ? "No File Selected Yet" : _image.path,
                  )),
                  const SizedBox(height: 30),
                  Center(
                      child: Text(
                    "Result : " + result,
                  )),
                  Text(Names)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
