import 'dart:html' as html;
import 'dart:js' as js;

class WebAnalyticsService {
  // Google Analytics 4 이벤트 전송
  static void _sendGAEvent(String eventName, Map<String, dynamic> parameters) {
    try {
      if (js.context.hasProperty('gtag')) {
        js.context.callMethod(
            'gtag', ['event', eventName, js.JsObject.jsify(parameters)]);
      }
    } catch (e) {
      print('Analytics error: $e');
    }
  }

  // 페이지 뷰 추적
  static void logPageView({
    required String pageName,
    String? pageTitle,
  }) {
    _sendGAEvent('page_view', {
      'page_title': pageTitle ?? pageName,
      'page_location': html.window.location.href,
      'page_path': html.window.location.pathname,
    });
  }

  // 버튼 클릭 이벤트
  static void logButtonClick({
    required String buttonName,
    String? pageName,
  }) {
    _sendGAEvent('click', {
      'event_category': 'engagement',
      'event_label': buttonName,
      'page_name': pageName ?? 'unknown',
    });
  }

  // 상담 신청 이벤트 (전환 추적)
  static void logConsultationRequest({
    String? source,
  }) {
    _sendGAEvent('consultation_request', {
      'event_category': 'conversion',
      'event_label': source ?? 'floating_button',
      'value': 1,
    });
  }

  // FAQ 클릭 이벤트
  static void logFaqClick({
    required String faqQuestion,
    required int faqIndex,
  }) {
    _sendGAEvent('faq_click', {
      'event_category': 'engagement',
      'event_label': faqQuestion,
      'faq_index': faqIndex,
    });
  }

  // 사용자 정의 이벤트
  static void logCustomEvent({
    required String eventName,
    Map<String, dynamic>? parameters,
  }) {
    _sendGAEvent(eventName, parameters ?? {});
  }

  // 사용자 속성 설정
  static void setUserProperty({
    required String name,
    required String value,
  }) {
    try {
      if (js.context.hasProperty('gtag')) {
        js.context.callMethod('gtag', [
          'config',
          'GA_MEASUREMENT_ID',
          js.JsObject.jsify({
            'user_properties': {name: value}
          })
        ]);
      }
    } catch (e) {
      print('User property error: $e');
    }
  }
}
