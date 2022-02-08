import 'package:oauth1/oauth1.dart' as oauth1;
import 'package:twitter_webview_auth/src/twitter_auth_result.dart';
import 'package:twitter_webview_auth/src/twitter_login_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Used to navigate to the [TwitterLoginWebview] and return its result.
///
/// Example implementation:
/// ```dart
/// (webview) => Navigator.of(context).push<Uri?>(
///   MaterialPageRoute(builder: (_) => webview),
/// );
/// ```
typedef WebviewNavigation = Future<Uri?> Function(TwitterLoginWebview webview);

/// Handles web view based oauth1 authentication with Twitter using
/// [TwitterLoginWebview].
///
/// The [WebView] plugin is used to build to the authentication page.
///
/// For Android it is recommended to set the [WebView.platform] implementation
/// to [SurfaceAndroidWebView] prior to starting the authentication process.
///
/// E.g.
/// ```dart
/// if (Platform.isAndroid) {
///   WebView.platform = SurfaceAndroidWebView();
/// }
/// ```
class TwitterAuth {
  TwitterAuth({
    required String consumerKey,
    required String consumerSecret,
    required this.callbackUrl,
    this.timeout = const Duration(seconds: 10),
  }) : _auth = oauth1.Authorization(
          oauth1.ClientCredentials(consumerKey, consumerSecret),
          oauth1.Platform(
            'https://api.twitter.com/oauth/request_token',
            'https://api.twitter.com/oauth/authorize',
            'https://api.twitter.com/oauth/access_token',
            oauth1.SignatureMethods.hmacSha1,
          ),
        );

  final String callbackUrl;
  final Duration timeout;

  final oauth1.Authorization _auth;

  /// Starts the 3-legged oauth flow to retrieve the user access tokens.
  ///
  /// [OnExternalNavigation] can be used to handle navigation outside the login
  /// page (e.g. help page, signup page, etc.). When `null`, the user will
  /// always stay inside the webview.
  ///
  /// See https://developer.twitter.com/en/docs/authentication/oauth-1-0a/obtaining-user-access-tokens.
  Future<TwitterAuthResult> authenticateWithTwitter({
    required WebviewNavigation webviewNavigation,
    OnExternalNavigation? onExternalNavigation,
  }) async {
    try {
      final tempCredentialsResponse =
          await _auth.requestTemporaryCredentials(callbackUrl).timeout(timeout);

      final authCallback = await webviewNavigation(
        TwitterLoginWebview(
          token: tempCredentialsResponse.credentials.token,
          callbackUrl: callbackUrl,
          onExternalNavigation: onExternalNavigation,
        ),
      );

      return _requestTokenCredentials(authCallback);
    } catch (e, st) {
      // request failed or timed out
      return TwitterAuthResult.failure(e, st);
    }
  }

  Future<TwitterAuthResult> _requestTokenCredentials(Uri? authCallback) async {
    final userCancelled = authCallback == null ||
        authCallback.queryParameters.containsKey('denied');

    if (!userCancelled) {
      final oauthToken = authCallback.queryParameters['oauth_token'];
      final oauthVerifier = authCallback.queryParameters['oauth_verifier'];

      if (oauthToken != null && oauthVerifier != null) {
        final credentialsResponse = await _auth
            .requestTokenCredentials(
              oauth1.Credentials(oauthToken, ''),
              oauthVerifier,
            )
            .timeout(timeout);

        final token = credentialsResponse.credentials.token;
        final tokenSecret = credentialsResponse.credentials.tokenSecret;
        final userId = token.split('-').first;

        return TwitterAuthResult.success(
          token: token,
          secret: tokenSecret,
          userId: userId,
        );
      } else {
        // invalid auth callback
        return TwitterAuthResult.failure(Exception('invalid auth callback'));
      }
    } else {
      // user cancelled
      return const TwitterAuthResult.cancelled();
    }
  }
}
