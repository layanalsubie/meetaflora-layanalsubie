import 'dart:developer';

import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meetaflora/core/constants/app_colors.dart';
import 'package:meetaflora/core/extensions/font_extensions.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(16),
        toolbarHeight: 100,
        backgroundColor: AppColors.background,
        title: AnyImageView(
          imagePath: 'assets/images/flora-logo-appbar.png',
          height: 10.sizeSH(min: 190),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) => log(value),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.photo, color: Color(0xff165D33)),
                    Gap(10),
                    Text('Upload from gallery'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.camera_alt, color: Color(0xff165D33)),
                    Gap(10),
                    Text('Take a photo'),
                  ],
                ),
              ),
            ],
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff165D33), width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(Icons.upload_rounded, color: Color(0xff165D33)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'search for a plant ...',
                  hintStyle: TextStyle(color: AppColors.textSecondary),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                ),
              ),
            ),

            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: kElevationToShadow[3],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16),
                              ),
                            ),
                            child: Icon(Icons.local_florist, size: 40),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Plant ${index + 1}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
