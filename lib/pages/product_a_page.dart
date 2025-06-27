import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/typos.dart';

class ProductAPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // 모바일 최적화 앱바
            SliverAppBar(
              expandedHeight: 60,
              floating: true,
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black87),
                onPressed: () => context.go('/'),
              ),
              title: Text(
                'Product A',
                style: T2_Semibold.copyWith(color: Colors.black87),
              ),
              centerTitle: true,
            ),

            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 제품 이미지 (모바일 최적화)
                  Container(
                    width: double.infinity,
                    height: 300,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blue[50]!, Colors.blue[100]!],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.phone_android,
                      size: 120,
                      color: Colors.blue,
                    ),
                  ),

                  // 제품 정보
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product A',
                          style: H1_Semibold.copyWith(color: Colors.black87),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '₩99,000',
                          style: H4_Bold.copyWith(color: Colors.red),
                        ),
                        const SizedBox(height: 20),

                        // 특징 태그들
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            _buildFeatureTag('모바일 최적화', Colors.blue),
                            _buildFeatureTag('고품질 디자인', Colors.green),
                            _buildFeatureTag('빠른 배송', Colors.orange),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // 설명
                        Text(
                          '제품 설명',
                          style: T1_Semibold.copyWith(color: Colors.black87),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          '혁신적인 디자인과 뛰어난 성능을 자랑하는 Product A입니다. '
                          '모바일 환경에 최적화되어 언제 어디서나 편리하게 사용할 수 있습니다. '
                          '고품질 소재와 정교한 마감으로 오래도록 사용할 수 있는 제품입니다.',
                          style: B1_Regular.copyWith(color: Colors.grey[700]),
                        ),
                        const SizedBox(height: 32),

                        // 버튼들 (모바일 최적화)
                        Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: ElevatedButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        '구매 기능은 곧 업데이트 됩니다!',
                                        style: B2_Medium.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                      backgroundColor: Colors.blue,
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  elevation: 3,
                                ),
                                child: Text(
                                  '지금 구매하기',
                                  style: Bt0_Semibold.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: OutlinedButton(
                                onPressed: () => context.go('/b'),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  'Product B 보기',
                                  style: Bt1_Semibold.copyWith(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40), // 하단 여백
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureTag(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Text(
        text,
        style: B4_Semibold.copyWith(color: color.withOpacity(0.8)),
      ),
    );
  }
}
