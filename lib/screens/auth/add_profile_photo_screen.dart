import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/screens/auth/set_location_screen.dart';
import 'package:food_ninja/screens/auth/widgets/custom_image_button.dart';
import 'package:food_ninja/widgets/custom_elevated_button.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/constants.dart';
import '../../widgets/screen_bachground.dart';
import 'widgets/screen_info_header.dart';

class AddProfilePhotoScreen extends StatefulWidget {
  static const routeName = "AddProfilePhotoScreen";
  const AddProfilePhotoScreen({super.key});

  @override
  State<AddProfilePhotoScreen> createState() => _AddProfilePhotoScreenState();
}

class _AddProfilePhotoScreenState extends State<AddProfilePhotoScreen> {
  final ImagePicker _picker = ImagePicker();
  String? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      horizontalPadding: 14,
      heightPercentageShifting: 0.15,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenInfoHeader(
                headerText: "Upload Your Photo\nProfile",
                descriptionText:
                    "This data will be displayed in your account\nprofile for security",
              ),
              const SizedBox(height: 20),
              if (_selectedImage == null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  child: Column(
                    children: [
                      CustomImageButton(
                        logo: Constants.gallery,
                        title: "From Gallery",
                        onTap: () {
                          _picker
                              .pickImage(source: ImageSource.gallery)
                              .then((value) {
                            setState(() {
                              _selectedImage = value?.path;
                            });
                          });
                        },
                      ),
                      CustomImageButton(
                        logo: Constants.camera,
                        title: "Take Photo",
                        onTap: () {
                          _picker
                              .pickImage(source: ImageSource.camera)
                              .then((value) {
                            setState(() {
                              _selectedImage = value?.path;
                            });
                          });
                        },
                      ),
                    ],
                  ),
                )
              else
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.width * 0.7,
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          image: DecorationImage(
                            image: FileImage(
                              File(_selectedImage!),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        top: 20,
                        end: 0,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _selectedImage = null;
                            });
                          },
                          icon: SvgPicture.asset(Constants.close),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          CustomElevatedButton(
            onTap: () {
              Navigator.of(context).pushNamed(SetLocationScreen.routeName);
            },
            title: "Next",
            width: 157,
          ),
        ],
      ),
    );
  }
}
