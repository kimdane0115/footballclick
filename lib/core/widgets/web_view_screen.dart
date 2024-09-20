import 'package:webview_flutter/webview_flutter.dart';

import '../../index.dart';

class WebViewScreen extends ConsumerStatefulWidget {
  const WebViewScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends ConsumerState<WebViewScreen> {
  late final WebViewController _controller;
  @override
  void initState() {
    final controller = WebViewController();

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // ..setBackgroundColor(Colors.transparent)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) => setState(() {
            // _controller.getTitle().then((value) {
            //   if (!title.isCompleted) title.complete(value);
            // });
            // isLoading = false;
          }),
        ),
      )
      ..loadRequest(Uri.parse('https://polished-romano-ea7.notion.site/1--10771ce65dc080a89355ca734341d5c7?pvs=4'));
      // ..loadRequest(Uri.parse('https://www.naver.com'));

    _controller = controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(controller: _controller),
      ),
    );
  }
}