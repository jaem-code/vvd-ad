import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:vvd_ad/utils/colors.dart';

class CommonWebScreen extends StatefulWidget {
  final String appBarTitle;
  final String webUrl;

  const CommonWebScreen({
    Key? key,
    required this.appBarTitle,
    required this.webUrl,
  }) : super(key: key);

  @override
  _CommonWebScreenState createState() => _CommonWebScreenState();
}

class _CommonWebScreenState extends State<CommonWebScreen> {
  late InAppWebViewController _webViewController;
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLUE_50,
      body: Stack(
        children: <Widget>[
          InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri(widget.webUrl)),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                transparentBackground: true,
                javaScriptEnabled: true,
                javaScriptCanOpenWindowsAutomatically: true,
                supportZoom: false,
              ),
            ),
            onWebViewCreated: (InAppWebViewController controller) {
              _webViewController = controller;
            },
            androidOnPermissionRequest: (controller, origin, resources) async {
              return PermissionRequestResponse(
                  resources: resources,
                  action: PermissionRequestResponseAction.GRANT);
            },
            onLoadStart: (controller, url) {
              if (mounted) {
                // mounted 체크 추가
                setState(() {
                  _isLoading = true;
                });
              }
            },
            onLoadStop: (controller, url) async {
              try {
                await controller.evaluateJavascript(source: '''
                  window.addEventListener('resize', function() {
                    window.flutter_inappwebview.callHandler('resize');
                  });

                  window.addEventListener('click', function(event) {
                    if (event.target.tagName.toLowerCase() === 'input' && event.target.type.toLowerCase() !== 'radio') {
                      event.stopPropagation();
                    }
                  }, true);
                ''');

                if (mounted) {
                  // mounted 체크 추가
                  setState(() {
                    _isLoading = false;
                  });
                }
              } catch (e) {
                print('Error in onLoadStop: $e');
                if (mounted) {
                  setState(() {
                    _isLoading = false;
                  });
                }
              }
            },
            onProgressChanged: (controller, progress) {
              // 진행 상태 업데이트가 필요한 경우 여기에 추가
            },
            onConsoleMessage: (controller, consoleMessage) {
              print('Console: ${consoleMessage.message}');
            },
          ),
          if (_isLoading) // 조건부 렌더링으로 변경
            const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // 필요한 정리 작업이 있다면 여기에 추가
    super.dispose();
  }
}
