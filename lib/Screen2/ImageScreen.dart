import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  final ImagePicker _picker = ImagePicker();
  File? pickImageFromCamera;
  List<XFile>? selectMultipleImage = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              _getImageFromCamera();
            },
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.brown,
              // backgroundImage: FileImage(pickImageFromCamera!),
              backgroundImage: pickImageFromCamera != null
                  ? FileImage(pickImageFromCamera!)
                  : null,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                _getMultipleImage();
              },
              child: Text('Multiple')),
          Container(
            height: 400,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0),
                itemCount: selectMultipleImage!.length,
                itemBuilder: (context, index) {
                  return Stack(
                    fit: StackFit.expand,
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        child:
                            Image.file(File(selectMultipleImage![index].path)),
                      ),
                      Positioned(
                        top: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            child: IconButton(
                                onPressed: () {
                                  selectMultipleImage!.removeAt(index);
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                )),
                          ),
                        ),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }

  _getImageFromCamera() async {
    debugPrint('Camera');
    final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);

    if (photo != null) {
      setState(() {
        pickImageFromCamera = File(photo.path);
      });
    }
    debugPrint('Camera done');
  }

  _getMultipleImage() async {
    final List<XFile>? images = await _picker.pickMultiImage();

    if (images != null) {
      setState(() {
        selectMultipleImage!.addAll(images);
      });
    }
  }
}
