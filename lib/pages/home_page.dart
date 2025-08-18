import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../utils/colors.dart';
import '../utils/typos.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GREY_50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          '삐약 가이드',
          style: H5_Semibold.copyWith(color: GREY_900),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Text(
                '어떤 정보를 찾으시나요?',
                style: H4_Bold.copyWith(color: GREY_900),
              ),
              SizedBox(height: 8.h),
              Text(
                '의료진과 함께하는 정확한 정보',
                style: B1_Regular.copyWith(color: GREY_600),
              ),
              SizedBox(height: 24.h),
              
              // Guide Card
              GestureDetector(
                onTap: () => context.go('/guide'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r),
                        ),
                        child: AspectRatio(
                          aspectRatio: 1200 / 630, // OG image ratio
                          child: Image.asset(
                            'lib/assets/og_image_guide.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: BLUE_100,
                                child: Center(
                                  child: Icon(
                                    Icons.article_outlined,
                                    size: 48.sp,
                                    color: BLUE_600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 4.h,
                              ),
                              decoration: BoxDecoration(
                                color: YELLOW_100,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Text(
                                '인기 콘텐츠',
                                style: B4_Medium.copyWith(color: YELLOW_600),
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              '용량 & 나눠맞기 질문 총정리',
                              style: T1_Semibold.copyWith(color: GREY_900),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              '고용량 주사해도 되나요? 나눠맞기 칸수는 어떤 기준으로 세나요?',
                              style: B2_Regular.copyWith(color: GREY_600),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              children: [
                                Text(
                                  '자세히 보기',
                                  style: B2_Medium.copyWith(color: BLUE_600),
                                ),
                                SizedBox(width: 4.w),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14.sp,
                                  color: BLUE_600,
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
              
              SizedBox(height: 20.h),
              
              // Prescription Card
              GestureDetector(
                onTap: () => context.go('/prescription'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r),
                        ),
                        child: AspectRatio(
                          aspectRatio: 1200 / 630, // OG image ratio
                          child: Image.asset(
                            'lib/assets/og_image_prescription.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: GREEN_50,
                                child: Center(
                                  child: Icon(
                                    Icons.medical_services_outlined,
                                    size: 48.sp,
                                    color: GREEN_500,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 4.h,
                              ),
                              decoration: BoxDecoration(
                                color: GREEN_50,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Text(
                                '처방 가이드',
                                style: B4_Medium.copyWith(color: GREEN_500),
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              '다이어트 주사 처방 가이드',
                              style: T1_Semibold.copyWith(color: GREY_900),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              '어디 병원을 가야되나요? 아무데서나 처방받을 수 있나요?',
                              style: B2_Regular.copyWith(color: GREY_600),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              children: [
                                Text(
                                  '자세히 보기',
                                  style: B2_Medium.copyWith(color: BLUE_600),
                                ),
                                SizedBox(width: 4.w),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14.sp,
                                  color: BLUE_600,
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
              
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
