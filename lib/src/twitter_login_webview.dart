import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Handles navigation to pages outside the login page.
typedef OnExternalNavigation = void Function(String url);

/// Builds a [WebView] for the twitter authentication.
///
/// Upon successful authentication or user cancel, [Navigator.pop] will be
/// called with the callback url as a [Uri] instance.
/// The callback url contains the token and secret as query params on
/// success, or a denied query param on user cancel.
class TwitterLoginWebview extends StatefulWidget {
  const TwitterLoginWebview({
    required this.token,
    required this.callbackUrl,
    this.onExternalNavigation,
    Key? key,
  }) : super(key: key);

  final String token;
  final String callbackUrl;

  /// Can be used to handle navigation outside the login page (e.g. help page,
  /// signup page, etc.).
  ///
  /// When `null`, the user will always stay in the webview.
  final OnExternalNavigation? onExternalNavigation;

  @override
  State<TwitterLoginWebview> createState() => _TwitterLoginWebviewState();
}

class _TwitterLoginWebviewState extends State<TwitterLoginWebview> {
  late final WebViewController _webviewController;

  @override
  void initState() {
    super.initState();

    _webviewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(onNavigationRequest: _navigationDelegate),
      )
      ..loadRequest(
        Uri.https(
          'api.twitter.com',
          'oauth/authorize',
          {
            'force_login': 'true',
            'oauth_token': widget.token,
          },
        ),
      );
  }

  NavigationDecision _navigationDelegate(
    NavigationRequest navigation,
  ) {
    if (navigation.url.startsWith(widget.callbackUrl)) {
      // received callback - pop navigator with callback url
      Navigator.of(context).pop(Uri.dataFromString(navigation.url));
      return NavigationDecision.prevent;
    } else {
      if (widget.onExternalNavigation == null) {
        // always stay in in-app webview
        return NavigationDecision.navigate;
      } else if ([
        // login page
        'twitter.com/oauth/authorize',

        // login error (e.g. invalid username / password)
        'api.twitter.com/login/error',

        // 2 factor authentication
        'api.twitter.com/account/login_verification'
      ].any(navigation.url.contains)) {
        // stay in in-app webview for predetermined pages
        return NavigationDecision.navigate;
      } else {
        // prevent navigation to external page
        widget.onExternalNavigation?.call(navigation.url);
        return NavigationDecision.prevent;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: _webviewController,
      gestureRecognizers: {Factory(() => EagerGestureRecognizer())},
    );
  }
}
