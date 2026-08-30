import 'package:flutter/material.dart';

class GalleryGrid extends StatelessWidget {
  final List<String> images;
  final EdgeInsetsGeometry? padding;

  const GalleryGrid({super.key, required this.images, this.padding});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth < 640
            ? 1
            : constraints.maxWidth < 1100
            ? 2
            : 3;

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: padding ?? EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: crossAxisCount == 1 ? 1.35 : 1.5,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            final imagePath = images[index];

            return ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                  frameBuilder:
                      (context, child, frame, wasSynchronouslyLoaded) {
                        if (wasSynchronouslyLoaded || frame != null) {
                          return AnimatedOpacity(
                            opacity: 1,
                            duration: const Duration(milliseconds: 300),
                            child: child,
                          );
                        }

                        return const _GalleryImagePlaceholder();
                      },
                  errorBuilder: (context, error, stackTrace) {
                    return const _GalleryImagePlaceholder(
                      label: 'Image unavailable',
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _GalleryImagePlaceholder extends StatelessWidget {
  final String label;

  const _GalleryImagePlaceholder({this.label = 'Loading image'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade200,
            Colors.grey.shade100,
            Colors.grey.shade300,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.image_outlined, size: 28, color: Colors.grey),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade700,
                letterSpacing: 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
