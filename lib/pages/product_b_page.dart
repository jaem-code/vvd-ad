import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/typos.dart';

class ProductBPage extends StatelessWidget {
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
                'Product B',
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
                        colors: [Colors.green[50]!, Colors.green[100]!],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.laptop_mac,
                      size: 120,
                      color: Colors.green,
                    ),
                  ),

                  // 제품 정보
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product B',
                          style: H1_Semibold.copyWith(color: Colors.black87),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '₩149,000',
                          style: H4_Bold.copyWith(color: Colors.red),
                        ),
                        const SizedBox(height: 20),

                        // 특징 태그들
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            _buildFeatureTag('프리미엄 품질', Colors.green),
                            _buildFeatureTag('전문가용', Colors.purple),
                            _buildFeatureTag('1년 무상 A/S', Colors.blue),
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
                          '프리미엄 품질의 완성형 Product B입니다. '
                          '전문가들이 인정한 뛰어난 성능과 안정성을 자랑합니다. '
                          '최고급 소재와 정밀한 기술력으로 제작된 최상급 제품으로, '
                          '까다로운 요구사항을 만족시키는 완벽한 솔루션입니다.',
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
                                      backgroundColor: Colors.green,
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
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
                                onPressed: () => context.go('/a'),
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: Colors.green,
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  'Product A 보기',
                                  style: Bt1_Semibold.copyWith(
                                    color: Colors.green,
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
