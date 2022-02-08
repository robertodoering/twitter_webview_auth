# Twitter oauth1 webview authentication for Flutter

[![pub](https://img.shields.io/pub/v/twitter_webview_auth)](https://pub.dev/packages/twitter_webview_auth)

This Flutter package implements the 3-legged oauth authentication flow using [webview_flutter](https://pub.dev/packages/webview_flutter).

## Getting started

- Get access to the [Twitter API](https://developer.twitter.com/en/docs/twitter-api/getting-started/getting-access-to-the-twitter-api) and create a 'Standalone App' in the [Twitter developer portal](https://developer.twitter.com/en/portal/projects-and-apps)
- Enable `OAuth 1.0a` for your app
- Enter a callback url. This can be any arbitrary url or just the scheme.
  - e.g. `app://`

## Usage

```dart
final result = await TwitterAuth(
  consumerKey: 'your_consumer_key',
  consumerSecret: 'your_consumer_secret',
  callbackUrl: 'your_callback_url',
).authenticateWithTwitter(
  webviewNavigation: (webview) => Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: webview,
      ),
    ),
  ),
);

result.when(
  success: (token, secret, userId) {
    // user successfully authenticated
  },
  failure: (dynamic e, st) {
    // authentication failed
  },
  cancelled: () {
   // authentication has been cancelled by the user
  },
);
```

## Additional information

For making requests to the Twitter API, check out [dart_twitter_api](https://pub.dev/packages/dart_twitter_api)