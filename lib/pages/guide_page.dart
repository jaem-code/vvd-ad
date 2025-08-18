import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/utils/typos.dart';
import '../utils/colors.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);

  Future<void> _launchURL() async {
    final Uri url = Uri.parse('https://deeplink.vvd-health.com/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.network(
                    'https://images.vvd-health.com/back-office/admin/banner/33796856-4b79-4785-94f5-f9813446084c-2fbe405d-0f6a-4215-aade-bbe9da113b79.png',
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return SizedBox(
                        height: 600,
                        child: Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const SizedBox(
                        height: 600,
                        child: Center(
                          child: Text('이미지를 불러올 수 없습니다'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, -2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Center(
              child: SizedBox(
                width: 328,
                height: 64,
                child: ElevatedButton(
                  onPressed: _launchURL,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: YELLOW_600,
                    foregroundColor: BLUE_50,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                  ),
                  child: Text(
                    '커뮤니티 인기글 더보기',
                    style: T1_Bold.copyWith(color: BLUE_50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
