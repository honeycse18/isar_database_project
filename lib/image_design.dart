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
  final ImagePicker _picker = ImagePicker();
  XFile? mainPhoto;
  XFile? photo2;
  XFile? photo3;
  XFile? photo4;
  XFile? photo5;

  // Pick image from gallery and set the corresponding photo
  Future<void> _pickImage(String photoType) async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        if (photoType == 'main') {
          mainPhoto = pickedFile;
        } else if (photoType == 'photo2') {
          photo2 = pickedFile;
        } else if (photoType == 'photo3') {
          photo3 = pickedFile;
        } else if (photoType == 'photo4') {
          photo4 = pickedFile;
        } else if (photoType == 'photo5') {
          photo5 = pickedFile;
        }
      });
    }
  }

  // Function to save the images to the Isar Database
  Future<void> _saveToDatabase() async {
    // Get the app's document directory
    final directory = await getApplicationDocumentsDirectory();

    // Open the Isar database and specify the directory
    final isar = await Isar.open(
      [ProfileImageSchema],
      directory: directory.path, // Pass the directory path here
    );

    // Save data to the Isar database
    final profileImage = ProfileImage()
      ..mainPhoto = mainPhoto?.path ?? ''
      ..photo2 = photo2?.path
      ..photo3 = photo3?.path
      ..photo4 = photo4?.path
      ..photo5 = photo5?.path;

    await isar.writeTxn(() async {
      await isar.profileImages.put(profileImage);
    });

    // Show confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Images saved successfully!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Pictures")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => _pickImage('main'),
                    child: mainPhoto == null
                        ? Placeholder(fallbackHeight: 150)
                        : Image.file(File(mainPhoto!.path), height: 150),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _pickImage('main'), // Pick main photo
              child: Text("Upload Image"), // Upload button
            ),
            Spacer(),
            ElevatedButton(
              onPressed: _saveToDatabase,
              child: Text("Save Images"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Back Step")),
                ElevatedButton(onPressed: () {}, child: Text("Next Step")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
