import 'package:flutter/material.dart';
import 'package:twitter_webview_auth/twitter_webview_auth.dart';

const _consumerKey = 'your_consumer_key';
const _consumerSecret = 'your_consumer_secret';
const _callbackUrl = 'your_callback_url';

void main() {
  runApp(const _ExampleApp());
}

class _ExampleApp extends StatelessWidget {
  const _ExampleApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Twitter webview auth example',
      home: _LoginPage(),
    );
  }
}

class _LoginPage extends StatefulWidget {
  const _LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<_LoginPage> {
  Future<void> _authenticate() async {
    final TwitterAuthResult result = await TwitterAuth(
      consumerKey: _consumerKey,
      consumerSecret: _consumerSecret,
      callbackUrl: _callbackUrl,
    ).authenticateWithTwitter(
      webviewNavigation: (Widget webview) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('Login')),
            body: webview,
          ),
        ),
      ),
    );

    result.when(
      success: (String token, String secret, String userId) {
        // user successfully authenticated
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => _HomePage(userId: userId),
          ),
        );
      },
      failure: (dynamic e, StackTrace? st) {
        // authentication failed
      },
      cancelled: () {
        // authentication has been cancelled by the user
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _authenticate,
          child: const Text('Login'),
        ),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('successfully authenticated as $userId'),
      ),
    );
  }
}
