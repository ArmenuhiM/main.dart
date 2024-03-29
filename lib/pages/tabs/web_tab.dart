import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebTab extends StatelessWidget {
  const WebTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebViewApp(),
    );
  }
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://flutter.dev'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: WebViewWidget(
        controller: controller,
      ),
    ));
  }
}
