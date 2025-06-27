import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/typos.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // 모바일 앱 스타일의 앱바
            SliverAppBar(
              expandedHeight: 120,
              floating: false,
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'VVD',
                  style: H4_Bold.copyWith(color: Colors.black87),
                ),
                centerTitle: true,
                background: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue.withOpacity(0.1), Colors.white],
                    ),
                  ),
                ),
              ),
            ),

            // 환영 메시지
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      '최고의 제품을\n만나보세요',
                      textAlign: TextAlign.center,
                      style: H2_Semibold.copyWith(color: Colors.black87),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'VVD에서 엄선한 프리미엄 제품들',
                      style: B1_Regular.copyWith(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),

            // 제품 카드들
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  _buildMobileProductCard(
                    context,
                    'Product A',
                    '혁신적인 디자인과 성능',
                    '₩99,000',
                    '/a',
                    Colors.blue,
                    Icons.phone_android,
                  ),
                  const SizedBox(height: 16),
                  _buildMobileProductCard(
                    context,
                    'Product B',
                    '프리미엄 품질의 완성형',
                    '₩149,000',
                    '/b',
                    Colors.green,
                    Icons.laptop_mac,
                  ),
                  const SizedBox(height: 24),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileProductCard(
    BuildContext context,
    String title,
    String description,
    String price,
    String route,
    Color color,
    IconData icon,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          onTap: () => context.go(route),
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  color.withOpacity(0.05),
                  Colors.white,
                  color.withOpacity(0.02),
                ],
              ),
            ),
            child: Row(
              children: [
                // 아이콘 영역
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(icon, size: 40, color: color),
                ),
                const SizedBox(width: 20),

                // 텍스트 영역
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: T1_Semibold.copyWith(color: Colors.black87),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: B3_Regular.copyWith(color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Text(
                            price,
                            style: T2_Semibold.copyWith(color: color),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
