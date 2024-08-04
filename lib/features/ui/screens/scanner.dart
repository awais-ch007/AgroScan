// ignore_for_file: depend_on_referenced_packages, unused_import, library_private_types_in_public_api, avoid_print, prefer_interpolation_to_compose_strings, prefer_const_constructors, deprecated_member_use, non_constant_identifier_names, override_on_non_overriding_member, sized_box_for_whitespace, unrelated_type_equality_checks, use_build_context_synchronously

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';

import 'solution.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  late File _image = File("");
  final picker = ImagePicker();
  String? result;
  bool checkresult = false;

  Future<String> fetchPost(File check) async {
    try {
      // var url = Uri.parse( "http://c1be-37-111-189-98.ngrok-free.app98.ngrok-free.app/upload");
      var url = Uri.parse("http://ce5f-34-148-18-145.ngrok-free.app/upload");

      var newrequest = http.MultipartRequest(
        "POST",
        url,
      );
      String fileName2 = check.path.split('/').last;
      print("1");
      final picture = await http.MultipartFile.fromPath('file', check.path,
          filename: fileName2);
      //print("check request");
      print("2");
      newrequest.files.add(picture);
      print("3");
      var response = await newrequest.send();
      print("response of data is:  " + response.toString());
      var responseData = await response.stream.toBytes();
      //print("responseData of data is:  "+responseData.toString());
      print("4");
      String resul = String.fromCharCodes(responseData);

      setState(() {
        checkresult = true;
        result = resul;
      });

      print("result of data is:  " + resul);

      //print("responseData of data is:  "+responseData.toString());
    } catch (e) {
      return "_model";
      //log(e.toString())0;
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
      appBar: AppBar(
        title: const Text(
          "Scan Page ",
          style: TextStyle(
            color: Color(0xff296e48),
          ),
        ),
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Hero(
        tag: 'scanner_page_hero_${UniqueKey()}',
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                child: _image.path == ""
                    ? const Center(
                        child: Text("No Image Selected"),
                      )
                    : Image.file(
                        _image,
                        fit: BoxFit.cover,
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      getfromgalleryImage();
                    },
                    icon: const Icon(
                      Icons.image,
                      size: 50,
                    ),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  // IconButton(
                  //   onPressed: () {
                  //     getfromCamreImage();
                  //   },
                  //   icon: const Icon(
                  //     Icons.camera_alt,
                  //     size: 50,
                  //   ),
                  // ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 21, 66, 42),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
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
                      onPressed: () async {
                        if (_image != "") {
                          var url = Uri.parse(
                              'http://192.168.11.188:5000/predict'); // Replace YOUR_SERVER_IP with your server's IP address
                          var request = http.MultipartRequest('POST', url);
                          request.files.add(await http.MultipartFile.fromPath(
                              'file', _image.path));

                          var streamedResponse = await request.send();
                          var response =
                              await http.Response.fromStream(streamedResponse);

                          if (response.statusCode == 200) {
                            Map<String, dynamic> data =
                                json.decode(response.body);

                            setState(() {
                              result = data['predicted_label'];
                              print(
                                  'Predicted label: ${data['predicted_label']}');
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SolutionPage(result!)),
                            );
                          } else {
                            print(
                                'Failed to predict image: ${response.reasonPhrase}');
                          }

                          // fetchPost(_image);
                        } else {}
                      },
                    ),
                    // decoration: ThemeHelper().buttonBoxDecoration(context),
                  ),
                ],
              ),
              // const SizedBox(height: 30),
              // Center(
              //     child: result != null
              //         ? Text("Result: $result")
              //         : SizedBox() // Display nothing if result is not fetched
              //     ),
            ],
          ),
        ),
      ),
    );
  }
}
