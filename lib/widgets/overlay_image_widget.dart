import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../utils/colors.dart';
import '../utils/typos.dart';

class OverlayImageWidget extends StatelessWidget {
  final String imageUrl;
  final String? overlayImageUrl;
  final bool showOverlay;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;
  final VoidCallback? onTap;

  // 오버레이 관련 고정값
  static const double _overlaySize = 80;
  static const double _overlayLeft = 8;
  static const double _overlayBottom = 8;

  const OverlayImageWidget({
    Key? key,
    required this.imageUrl,
    this.overlayImageUrl,
    this.showOverlay = false,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.boxShadow,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(20),
          boxShadow: boxShadow ??
              [
                BoxShadow(
                  color: GREY_700.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
        ),
        child: ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.circular(20),
          child: Stack(
            children: [
              // 메인 이미지
              CachedNetworkImage(
                imageUrl: imageUrl,
                fit: fit,
                width: width,
                height: height,
                placeholder: (context, url) => Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue[50]!, Colors.blue[100]!],
                    ),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: YELLOW_500,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 60,
                        color: Colors.grey[600],
                      ),
                      SizedBox(height: 8),
                      Text(
                        '이미지를 불러올 수 없습니다',
                        style: B4_Regular.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '${error.toString()}',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.red[400],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
              // 오버레이 로고
              if (showOverlay && overlayImageUrl != null)
                Positioned(
                  left: _overlayLeft,
                  bottom: _overlayBottom,
                  child: Container(
                    width: _overlaySize,
                    height: _overlaySize,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: overlayImageUrl!,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          color: Colors.grey[100],
                          child: Icon(
                            Icons.business,
                            color: Colors.grey[400],
                            size: _overlaySize * 0.5,
                          ),
                        ),
                        errorWidget: (context, url, error) {
                          return Container(
                            color: Colors.grey[100],
                            child: Icon(
                              Icons.business,
                              color: Colors.grey[400],
                              size: _overlaySize * 0.5,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
