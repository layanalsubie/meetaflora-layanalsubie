import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:meetaflora/features/home/domain/entities/home_entity.dart';
import 'package:sizer/sizer.dart';

class HomeGridViewWidget extends StatelessWidget {
  final List<HomeEntity> plants;

  const HomeGridViewWidget({
    super.key,
    required this.plants,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: plants.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.85,
      ),
      itemBuilder: (context, index) {
        final plant = plants[index];

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
                child: AnyImageView(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  imagePath: plant.imageUrl,
                  width: 100.sw,
                  fit: .fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  plant.alt,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}