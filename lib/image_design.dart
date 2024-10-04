import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // For picking images
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart'; // For Isar DB
import 'isar_model.dart'; // Import your Isar model

class ImageUploadScreen extends StatefulWidget {
  @override
  _ImageUploadScreenState createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ImagePicker _picker = ImagePicker();
  XFile? _mainImage;
  List<XFile> _images = [];

  // Image picking function
  Future<void> pickImages() async {
    final pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null) {
      setState(() {
        _images = pickedFiles;
      });
    }
  }

  // Function to save the images to the Isar Database
  Future<void> _saveToDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [ProfileImageSchema],
      directory: directory.path,
    );

    final profileImage = ProfileImage()
      ..mainPhoto = _mainImage?.path ?? ''
      ..photo2 = _images.length > 1 ? _images[1].path : null
      ..photo3 = _images.length > 2 ? _images[2].path : null
      ..photo4 = _images.length > 3 ? _images[3].path : null
      ..photo5 = _images.length > 4 ? _images[4].path : null;

    await isar.writeTxn(() async {
      await isar.profileImages.put(profileImage);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Images saved successfully!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white, // Adjust based on your theme
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        10.0, 0.0, 10.0, 0.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          if (_mainImage != null)
                            Expanded(
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.file(File(_mainImage!.path),
                                        height: 450, fit: BoxFit.fill),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .blue, // Adjust based on your theme
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(8.0),
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Text(
                                        'Main Photo',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          else
                            Expanded(
                              child: Container(
                                height: 450,
                                color: Colors.grey[300],
                                child: const Center(
                                    child: Text('No Main Image Selected')),
                              ),
                            ),
                          Expanded(
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    height: 500,
                                    child: ListView.builder(
                                      itemCount: _images.length,
                                      itemBuilder: (context, index) {
                                        final imageFile =
                                            File(_images[index].path);
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _mainImage = _images[index];
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.file(
                                                imageFile,
                                                fit: BoxFit.cover,
                                                height: 105,
                                                width: 70,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 60,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: GestureDetector(
                          onTap: pickImages,
                          child: Center(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text(
                                    'Upload Image',
                                    textAlign: TextAlign.center,
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _navigationButton(context, 'Back Step',
                              Icons.navigate_before, () {}),
                          _navigationButton(
                              context, 'Next Step', Icons.navigate_next, () {
                            _saveToDatabase;
                          }),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            border: Border.all(
                                color: Colors.blue), // Adjust to your theme
                          ),
                          child: LinearProgressIndicator(
                            value: 2.0 / 35, // Progress value
                            backgroundColor: Colors.grey[300],
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  // Widget for navigation buttons
  Widget _navigationButton(
      BuildContext context, String label, IconData icon, VoidCallback onTap) {
    return Container(
      width: 130.0,
      height: 55.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.blue, width: 2.0),
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.blue, size: 24.0),
            Text(label),
          ],
        ),
      ),
    );
  }
}
