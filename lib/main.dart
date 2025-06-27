import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:vvd_ad/utils/typos.dart';
import 'pages/home_page.dart';
import 'pages/product_a_page.dart';
import 'pages/product_b_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage()),
      GoRoute(path: '/a', builder: (context, state) => ProductAPage()),
      GoRoute(path: '/b', builder: (context, state) => ProductBPage()),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'VVD Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Pretendard 폰트를 기본으로 설정
        fontFamily: 'Pretendard',

        primarySwatch: Colors.blue,
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),

        // 정의된 텍스트 스타일을 Material3 텍스트 테마에 매핑
        textTheme: TextTheme(
          // Display styles (큰 헤더용)
          displayLarge: H1_Semibold,
          displayMedium: H2_Semibold,
          displaySmall: H3_Semibold,

          // Headline styles (중간 헤더용)
          headlineLarge: H4_Bold,
          headlineMedium: H5_Semibold,
          headlineSmall: T1_Semibold,

          // Title styles (제목용)
          titleLarge: T1_Semibold,
          titleMedium: T2_Semibold,
          titleSmall: T3_Semibold,

          // Body styles (본문용)
          bodyLarge: B1_Regular,
          bodyMedium: B2_Regular,
          bodySmall: B3_Regular,

          // Label styles (라벨, 버튼용)
          labelLarge: Bt1_Semibold,
          labelMedium: Bt2_Semibold,
          labelSmall: Bt3_Semibold,
        ),

        // 앱바 테마
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          titleTextStyle: T2_Semibold.copyWith(color: Colors.black87),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),

        // 카드 테마
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),

        // 버튼 테마
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: Bt0_Semibold,
          ),
        ),

        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: Bt1_Semibold,
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            textStyle: Bt2_Semibold,
          ),
        ),

        // 입력 필드 테마 (나중에 필요할 경우를 위해)
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          labelStyle: B2_Regular,
          hintStyle: B2_Regular.copyWith(color: Colors.grey[500]),
          helperStyle: B4_Regular,
          errorStyle: B4_Regular.copyWith(color: Colors.red),
        ),

        // 스낵바 테마
        snackBarTheme: SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          contentTextStyle: B2_Medium.copyWith(color: Colors.white),
        ),

        // 스크롤바 테마 (모바일에서는 보통 숨김)
        scrollbarTheme: const ScrollbarThemeData(
          thumbVisibility: MaterialStatePropertyAll(false),
        ),
      ),
      routerConfig: _router,
    );
  }
}
