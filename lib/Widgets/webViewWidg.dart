import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../models/article.dart';

class WebView extends StatefulWidget {
  const WebView({super.key,required this.articleModel});
  final ArticleModel articleModel;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {

  late final WebViewController controller;

  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
          Uri.parse(widget.articleModel.url),

      );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}